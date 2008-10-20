
class BankOCR
	def self.parse_digit(d)
		if d.size == 3
			return 111
		end
		if d.size == 2
			return 10*DIGITS[d[0]] + DIGITS[d[1]]
		end
		if d.is_a? Array
			return DIGITS[d]
		end
	end
end

 DIGITS={ ["   ", 
           "  |",
           "  |"] => 1,
 					[" _ ",
           " _|",
           "|_ "]=> 2,
 					[" _ ",
           " _|",
           " _|"] => 3,
 					["   ",
           "|_|",
           "  |"]=> 4,
 					[" _ ",
           "|_ ",
           " _|"]=> 5,
 					[" _ ",
           "|_ ",
           "|_|"]=> 6,
 					[" _ ",
           "  |",
           "  |"]=> 7,
 					[" _ ",
           "|_|",
           "|_|"]=> 8,
 					[" _ ",
           "|_|",
           " _|"]=> 9,
 					[" _ ",
           "| |",
           "|_|"] => 0,
}