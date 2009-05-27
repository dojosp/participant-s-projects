function Frame(score1, score2)
	return Convert(score1) + Convert(score2)
end

function Convert(score)
	return tonumber(score) or 0 
end