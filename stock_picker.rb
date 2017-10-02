def pick_stocks(array)
	#array must be an array of integers
	#this could have been done much more smoothly and efficiently with just arrays, and I knew that. 
	#For some reason I preferred having lots of literal, readable info, which isn't the right instinct. We want elegant solutions.
	current_span = {:buy_position => 0, :buy_value => array[0], :sell_position => 0, :sell_value => array[0], :profit => 0}
	best_span = current_span.clone

	for i in 1..array.length - 1
		if array[i] > current_span[:sell_value] 
			current_span[:sell_position] = i
			current_span[:sell_value] = array[i]
			current_span[:profit] = current_span[:sell_value] - current_span[:buy_value]
			best_span = current_span.clone if current_span[:profit] > best_span[:profit]
		end
		if array[i] < current_span[:buy_value]
			 current_span = {:buy_position => i, :buy_value => array[i], :sell_position => i, :sell_value => array[i], :profit => 0}
		end
	end
	best_span[:literal] = "My advice is to buy at position #{best_span[:buy_position]} at a price of $#{best_span[:buy_value]}, then sell at position #{best_span[:sell_position]} at a price of $#{best_span[:sell_value]} for a profit of $#{best_span[:profit]}."
	return best_span
end

p pick_stocks([1,2,3,4,5,6,4,2,1])[:literal]
p pick_stocks([345,132,51,25,1351,252,7834,2652,1616])[:literal]
p pick_stocks([17,3,6,9,15,8,6,1,10])[:literal]