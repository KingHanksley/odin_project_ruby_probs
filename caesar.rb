def cipher (string, offset)
	#offset is an integer that shifts right with positive values, left with negative values
	alpha_lowercase = ('a'..'z').to_a
	alpha_uppercase = ('A'..'Z').to_a
	#ideally I wouldn't be creating these arrays above (costs memory), just using ASCII. 
	#But I didn't know enough about ASCII until looking up the other solutions. 
	for i in 0..string.length - 1 do 
		char = string[i]
		if lower_index = alpha_lowercase.index(char)
			string[i] = alpha_lowercase[(lower_index+offset)%26]
			next
		end
		if upper_index = alpha_uppercase.index(char)
			string[i] = alpha_uppercase[(upper_index+offset)%26]
			next
		end
	end

	return string
end

p cipher("test",0)
p cipher("test2",1)
p cipher("test3",-1)
p cipher("test4",20)
p cipher("test5",-20)
p cipher("Test for if someone used really crazy numbers like 245515 or -333444",-3953)