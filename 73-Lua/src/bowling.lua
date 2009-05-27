function Frame(score1, score2)
  return {
  		result = function()
  			return Convert(score1) + Convert(score2)
  		end
  	}
end

function Convert(score)
	if score == "-" then
		return 0
	end
	return tonumber(score) 
end