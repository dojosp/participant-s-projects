module OCR where

parseMultipleOCR :: [[[Char]]] -> Int
parseMultipleOCR (x:xs) = let l = length(xs) in (10 ^ l * (parseOCR x)) + (parseMultipleOCR xs)
parseMultipleOCR [] = 0

parseOCR :: [[Char]] -> Int
parseOCR [" _ ",
		  "|_|",
		  " _|"] = 9
parseOCR [" _ ",
		  "|_|",
		  "|_|"] = 8
parseOCR [" _ ",
		  "  |",
		  "  |"] = 7
parseOCR [" _ ",
		  "|_ ",
		  "|_|"] = 6
parseOCR [" _ ",
		  "|_ ",
		  " _|"] = 5
parseOCR ["   ",
		  "|_|",
		  "  |"] = 4
parseOCR [" _ ",
		  " _|",
		  " _|"] = 3
parseOCR [" _ ",
	 	  " _|",
	 	  "|_ "] = 2
parseOCR ["   ",
		  "  |",
		  "  |"] = 1
parseOCR [" _ ",
		  "| |",
		  "|_|"] = 0
