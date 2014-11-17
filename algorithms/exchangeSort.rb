require 'pry'
# 1. Compare the first pair of numbers (positions 0 and 1) and reverse them if they are not in the correct order.
# 2. Repeat for the next pair (positions 1 and 2).
# 3. Continue the process until all pairs have been checked.
# 4. Repeat steps 1 through 3 for positions 0 through n - 1 to i (for i = 1, 2, 3, ...) until no pairs remain to be checked.
# 5. The list is now sorted.

array = [12, 7, 1, 5, 8, 3, 53]

def exchangeSort(array)
	i = 0 
	j = 1
	h = 1

	until i == ( array.length )
		if array[i] > array[i+j]
			array[i], array[i+j] = array[i+j], array[i]
		end

		j+= 1
	
		if h != array.length - 1	
			if j == (array.length - h)
				i += 1
				j = 1
				h += 1
			end
		else
			break
		end
	end

	puts array
	
end

exchangeSort(array)

