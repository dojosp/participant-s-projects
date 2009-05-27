function Frame(score1, score2)
	return Convert(score1) + Convert(score2)
end

function Convert(score)
    if score == "X" then
      return 10
    end
	return tonumber(score) or 0 
end

function SumFrames(frame1, frame2)
	return frame1 + frame2
end