PROJECT := dojo_unit

TEMPLATE := c_project_template
SRC_DIR := src
TESTS_DIR := tests
LIB_DIR := lib
BIN_DIR := bin
SCRIPT_DIR := scripts
INSTALL_DIR := /usr/shared/lib

CC := gcc
LFLAGS := -Wall -ansi -pedantic
CFLAGS := -Wall -ansi -pedantic $(DEBUG)
RM := rm -rf

LIBS :=

USER_OBJS :=

OS_NAME := $(shell uname -s)
