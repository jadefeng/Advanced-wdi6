# Merge sorting
require 'pry'
array = [1, 5, 2, 4, 7, 3, 6, 9 ]

# MergeSort (Array(First..Last))
# Begin
# If Array contains only one element Then
#      Return Array
# Else
#      Middle= ((Last + First)/2) rounded down to the nearest integer
#      LeftHalfArray = MergeSort(Array(First..Middle)) 
#      RightHalfArray = MergeSort(Array(Middle+1..Last)) 
#      ResultArray = Merge(LeftHalfArray, RightHalfArray) 
#      Return ResultArray
# EndIf
# End MergeSort


def mergeSort(array)
	if array.length == 1
		return array
	else
		middle = (array.length / 2).floor
		leftHalfArray = mergeSort(array[0 .. middle])
		rightHalfArray = mergeSort(array[(middle+1) .. (array.length - 1)])
		resultArray = [leftHalfArray, rightHalfArray].flatten
		return resultArray
	end
end

mergeSort(array)