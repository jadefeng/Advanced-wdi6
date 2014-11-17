require 'pry'

array = [1, 4, 2, 7, 2, 3, 8] 

def bubble(array)

	allsorted = false 

	until allsorted == true
		i = 0 
		length = array.length 
		sortingCounter = 0

		while i < (length - 1)
			if array[i] > array[i+1]
				array[i+1], array[i] = array[i], array[i+1] # Swapping the array
				sortingCounter += 1
			end
			i+=1
		end

		if sortingCounter == 0
			allsorted = true 
		end

	end 

	puts array

end

bubble(array)