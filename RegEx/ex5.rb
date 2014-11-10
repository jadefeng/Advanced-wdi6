# [8] Make a program that prints each line that has a two of the same nonwhitespace characters next to each other. It should match lines that contain words such as Mississippi, Bamm-Bamm, or llama.

ARGF.each do |line|
	puts line if line =~ /([a-z])\1/i 
	# Parenthesis () captures what is inside it
	# \1 helps you use it later
	# You can also use . instead of [a-z], but the question asked for a non-white space specifically
	# This is called a BACK REFERENCE
end