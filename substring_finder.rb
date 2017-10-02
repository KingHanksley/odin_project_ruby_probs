def substrings(string,dictionary)
	results = {}
	dictionary.each do |substring|
		substring.downcase!
		remainder = string.clone.downcase
		while remainder.index(substring)
			results[substring] ? results[substring]+= 1 : results[substring] = 1
			remainder.slice!(substring)
		end
	end
	return results
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
