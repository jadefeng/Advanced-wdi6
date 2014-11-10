# [8] Extra credit exercise: write a program that prints out any input line that men- tions both wilma and fred.

ARGF.each do |line|
	# puts line if line =~ /(^.*?\bwilma\b.*?\bfred\b.*?$)/i
	puts line if (line =~ /wilma/i && line =~ /fred/i)
	# puts line if (line =~ /wilma.*fred|fred.*wilma/i)
	# puts line if line =~ /(?=.*wilma)(?=.*fred).*/
		# This is a look ahead method using ?=
		# It is a zero-length assertion to check that it exists
end
