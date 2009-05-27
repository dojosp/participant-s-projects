function Frame(score1, score2)
  return {
  		result = function()
  			score = 0
  			if score1 ~= "-" then 
  				score = tonumber(score1)
  			end
  			if score2 ~= "-" then
  				score= score + tonumber(score2)
			end
			return score
  		end
  	}
end