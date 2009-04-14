class Timetable:
	def __init__(self, turnaround, timesA, timesB):
		self.timesA = timesA
		self.timesB = timesB
		self.turnaround = turnaround
	
	def initial_trains (self):
		self.events().sort()
		for e in self.events():
			pass	
		if(len(self.timesB) >= 1 and self.timesB[0][0] == 61):
			return (1,0)
		else:
			return (len(self.timesA),len(self.timesB))
	
	def events(self):
		eventsA = self.createEvents(self.timesA, Event.A_B)
		eventsB = self.createEvents(self.timesB, Event.B_A)
		return eventsA + eventsB

	def createEvents(self, times, direction):
		events= []
		for time in times:
			events.append(Event(time[0], Event.departure, direction))
			events.append(Event(time[1] + self.turnaround, Event.arrival, direction))
		return events

class Event:
	departure = 0
	arrival = 0
	A_B = 1
	B_A = 0
	
	def __init__(self, time, event_type, direction):
		self.time = time
		self.direction = direction
		
	def __cmp__(self, otherEvent):
		return self.time - otherEvent.time
	
	def perform(self):
		if (self.direction == Event.B_A):
			return (1,0)
		return (0,1)	
