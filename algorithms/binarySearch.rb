array = [12, 6, 2, 1, 5, 8, 4, 8]
value = 8

def binarySearch(array, value)
    low = 0 
    high = array.length - 1 
    array.sort!
    while low <= high 
        mid = ((low + high) / 2).floor
        if (array[mid] > value)
            high = mid - 1 
        elsif (array[mid] < value )
            low = mid + 1
        else 
            puts "Found the #{value}!"
            return 
        end
    end
    puts "Not found #{value}!"
end

binarySearch(array, value)