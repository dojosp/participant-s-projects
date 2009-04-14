import unittest
from train_timetable import *

class TestTrainTimetable(unittest.TestCase):

	def test_empty_timetable_results_no_trains(self):
		timetable = Timetable(42, [], [])
		self.assertEqual(timetable.initial_trains(), (0, 0))
		
	def test_just_one_train_for_single_trip_A_to_B(self):
		timetable = Timetable(42, [(0,60)], [])
		self.assertEqual(timetable.initial_trains(), (1, 0))

	def test_two_trips(self):
		timetable = Timetable(42, [(0,60)], [(0,60)])
		self.assertEqual(timetable.initial_trains(), (1, 1))
	
	def test_three_trips(self):
		timetable = Timetable(1, [(0,60),(62,70),(72,80)], [])
	 	self.assertEqual(timetable.initial_trains(), (3, 0))		
	 
	def test_two_concurrent_trips(self):
		timetable = Timetable(1, [(0,60)], [(0,60)])
	 	self.assertEqual(timetable.initial_trains(), (1, 1))
	 	
	def test_two_way_trips(self):
		timetable = Timetable(1, [(0,60)], [(59,119)])
	 	self.assertEqual(timetable.initial_trains(), (1, 1))		
	
	def test_sequence_trips(self):
		timetable = Timetable(1, [(0,60)], [(61,120)])
		self.assertEqual(timetable.initial_trains(), (1,0))
		
#	def test_sequence_trips(self):
#		timetable = Timetable(2, [(0,60)], [(62,120)])
#		self.assertEqual(timetable.initial_trains(), (1,0))
	
		
class TestTrainEvent(unittest.TestCase):
	def test_no_trips(self):
		timetable = Timetable(1, [], [])
		self.assertEqual(timetable.events(), [])

	def test_one_trip_A_to_B(self):
		timetable = Timetable(0, [(0,1)], [])
		self.assertEqual(timetable.events(), [Event(0, Event.departure, Event.A_B), Event(1, Event.arrival, Event.A_B)])
		
	def test_one_trip_B_to_A(self):
		timetable = Timetable(0, [], [(0,1)])
		self.assertEqual(timetable.events(), [Event(0, Event.departure, Event.B_A), Event(1, Event.arrival, Event.B_A)])
		
	def test_one_trip_B_to_A_and_A_to_B(self):
		timetable = Timetable(0, [(0,1)], [(0,1)])
		self.assertEqual(timetable.events(), [Event(0, Event.departure, Event.A_B), Event(1, Event.arrival, Event.A_B), Event(0, Event.departure, Event.B_A), Event(1, Event.arrival, Event.B_A)])
		
	def test_several_trips_B_to_A_and_A_to_B(self):
		timetable = Timetable(0, [(0,1), (5,10)], [(0,1), (10,15)])
		self.assertEqual(timetable.events(), [Event(0, Event.departure, Event.A_B), Event(1, Event.arrival, Event.A_B), Event(5, Event.departure, Event.A_B), Event(10, Event.arrival, Event.A_B), Event(0, Event.departure, Event.B_A), Event(1, Event.arrival, Event.B_A), Event(10, Event.departure, Event.B_A), Event(15, Event.arrival, Event.B_A)])

	def test_one_trip_B_to_A(self):
		timetable = Timetable(3, [], [(0,1)])
		self.assertEqual(timetable.events(), [Event(0, Event.departure, Event.B_A), Event(4, Event.arrival, Event.B_A)])
	
	def test_event_act_arrival_on_B(self):
		event = Event(0,Event.arrival,Event.A_B)
		self.assertEqual((0,1),event.perform())

	def test_event_act_arrival_on_A(self):
		event = Event(0,Event.arrival,Event.B_A)
		self.assertEqual((1,0),event.perform())


if __name__ == '__main__':
	unittest.main()
