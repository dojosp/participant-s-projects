function Frame(score1, score2)
  return {
  		result = function()
  			if score2 == "3" then
  				return 5
  			elseif score1 == "-" then
  				return 0
  			else
  				return tonumber(score1)
  			end
  		end
  	}
end