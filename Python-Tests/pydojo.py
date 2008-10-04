#!/usr/bin/env python
# -*- coding: utf-8 -*-
# vi:si:et:sw=4:sts=4:ts=4

##
## This program is free software; you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 2 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU Lesser General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program; if not, write to the Free Software
## Foundation, Inc., or visit: http://www.gnu.org/.
##
## Author(s):   Ronaldo Maia <romaia@async.com.br>
##
##


import gtk
import gnomevfs
import pynotify
import gobject

import imp
import traceback
import time

import unittest
import sys

from kiwi.utils import gsignal

ROUND_TIME = 1 # minutes

class DojoMonitor(gobject.GObject):
    (STATUS_PASS,
     STATUS_FAIL,
     STATUS_ERROR,
     STATUS_LOAD_ERROR) = range(4)

    gsignal('status-changed', int, object)

    def __init__(self, name):
        gobject.GObject.__init__(self)

        uri = gnomevfs.make_uri_from_shell_arg(name)
        gnomevfs.monitor_add(uri,
                             gnomevfs.MONITOR_FILE,
                             self._on_monitor)

        self.name = name

    def _load_module(self):
        try:
            self.module = imp.load_source('tests', self.name)
        except:
            self.traceback = traceback.format_exc()
            self.module = None

    def _on_monitor(self, dir, file, event):
        if event == gnomevfs.MONITOR_EVENT_CHANGED:
            self.run_tests()

    def run_tests(self):
        self._load_module()

        if self.module is None:
            self.emit('status-changed',
                      self.STATUS_LOAD_ERROR,
                      self.traceback)
            return

        loader = unittest.TestLoader()
        suit = loader.loadTestsFromTestCase(self.module.StubTests)
        results = unittest.TestResult()
        suit.run(results)

        if results.failures:
            self.emit('status-changed', self.STATUS_FAIL, results)
        else:
            self.emit('status-changed', self.STATUS_PASS, results)


class DojoNotification(pynotify.Notification):
    def __init__(self):
        pynotify.init('DojoTools')
        pynotify.Notification.__init__(self, 'DojoTools', 'Foo Bar')

        #self.set_property('icon-name', gtk.STOCK_DIALOG_WARNING)
        self._add_timeout()
        self._waiting_next = False

    def _add_timeout(self):
        self.round_start = time.time()
        self._timeout = gobject.timeout_add(ROUND_TIME * 60 * 1000,
                                            self._on_timeout)

    def _on_timeout(self):
        self.notify_timeout()

    def _clear(self):
        self.close()
        self.clear_actions()
        self.clear_hints()

    def notify_failure(self, results):
        if self._waiting_next:
            return

        self._clear()
        messages = []

        for test, trace in results.failures:
            message = ""
            lines = trace.split('\n')
            line_number = lines[-4].split(', ')[1]
            message += "<b>%s</b>: %s \n%s" % (test, line_number, lines[-2])

            messages.append(message)

        message = '\n'.join(messages)

        self.set_property('summary',
                          '%s Failures' % len(results.failures))
        self.set_property('body',
                          message)
        self.show()

    def notify_error(self, message):
        if self._waiting_next:
            return

        self._clear()
        self.set_property('summary', 'Error')
        self.set_property('body',  message)
        self.show()

    def notify_load_error(self, message):
        if self._waiting_next:
            return

        self._clear()
        self.set_property('summary', 'Load Error')
        self.set_property('body',  message)
        self.show()

    def notify_timeout(self):
        self._clear()
        self.set_timeout(0)
        self.add_action('continue', 'Continue', self._on_continue)
        self.set_property('summary', 'Next, please')
        self.set_property('body', 'Get your ass out of there!')
        self.set_property('icon-name', gtk.STOCK_DIALOG_WARNING)
        self.show()

        self._waiting_next = True

    def _on_continue(self, notification, action):
        self._add_timeout()
        self._waiting_next = False




class DojoTray(gtk.StatusIcon):
    def __init__(self, monitor, notification):
        gtk.StatusIcon.__init__(self)

        self.notification = notification
        notification.attach_to_status_icon(self)
        self.set_status(monitor.STATUS_PASS)

        monitor.connect('status-changed', self._on_status_changed)
        gobject.timeout_add(1000, self._update_tooltip)

    def _update_tooltip(self):
        elapsed =  int(time.time() - self.notification.round_start)

        minutes = int(elapsed/60.0)
        seconds = elapsed - minutes*60

        self.set_tooltip("time elapsed: %d:%02d" % (minutes, seconds))
        return True

    def _on_status_changed(self, monitor, status, results):
        self.set_status(status, results)

    def set_status(self, status, results=None):
        if status == DojoMonitor.STATUS_PASS:
            self.set_from_stock(gtk.STOCK_YES)
            self.notification.close()

        elif status == DojoMonitor.STATUS_FAIL:
            self.set_from_stock(gtk.STOCK_NO)
            self.notification.notify_failure(results)

        elif status == DojoMonitor.STATUS_ERROR:
            self.set_from_stock(gtk.STOCK_DIALOG_WARNING)
            self.notification.notify_error(results)

        elif status == DojoMonitor.STATUS_LOAD_ERROR:
            self.set_from_stock(gtk.STOCK_DIALOG_WARNING)
            self.notification.notify_load_error(results)


class DojoTools:
    def __init__(self, name):
        self.monitor = DojoMonitor(name)
        self.notification = DojoNotification()
        self.tray = DojoTray(self.monitor, self.notification)


if __name__ == '__main__':
    if len(sys.argv) < 2:
        print 'usage:'
    else:
        name = sys.argv[1]
        dojo = DojoTools(name)
        gtk.main()
