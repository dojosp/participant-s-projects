module Main where

import Test.HUnit
import OCR

main = runTestTT tests

tests = TestList [testParseSingleDigits, testParseSeveralDigits]

one = [ "   ",
		"  |",
		"  |"]
two = [ " _ ",
		" _|",
		"|_ "]
three = [" _ ",
		 " _|",
		 " _|"]
four = ["   ",
		"|_|",
		"  |"]
five = [" _ ",
		"|_ ",
		" _|"]
six = [ " _ ",
		"|_ ",
		"|_|"]
seven = [ " _ ",
		  "  |",
		  "  |"]
eight = [ " _ ",
		  "|_|",
		  "|_|"]
nine = [  " _ ",
		  "|_|",
		  " _|"]
zero = [  " _ ",
		  "| |",
		  "|_|"]

testParseSingleDigits =
	TestList
	[
	"Should parse number 1" ~:
	parseOCR one ~?= 1
   ,"Should parse number 2" ~:
	parseOCR two ~?= 2
   ,"Should parse number 3" ~:
	parseOCR three ~?= 3
   ,"Should parse number 4" ~:
	parseOCR four ~?= 4	
   ,"Should parse number 5" ~:
	parseOCR five ~?= 5	
   ,"Should parse number 6" ~:
	parseOCR six ~?= 6
   ,"Should parse number 7" ~:
	parseOCR seven ~?= 7
   ,"Should parse number 8" ~:
	parseOCR eight ~?= 8
   ,"Should parse number 9" ~:
	parseOCR nine ~?= 9
   ,"Should parse number 0" ~:
	parseOCR zero ~?= 0
	]

testParseSeveralDigits =
	TestList
	[
	"Should parse 11" ~:
	parseMultipleOCR [one, one] ~?= 11
	,"Should parse 112" ~:
	parseMultipleOCR [one, one, two] ~?= 112
	]