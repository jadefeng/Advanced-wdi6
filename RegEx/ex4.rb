# [8] Make a program that prints each line that has a word that is capitalized but not ALL capitalized. Does it match Fred but neither fred nor FRED?

ARGF.each do |line|
	puts line if line =~ /\b[A-Z][\w-]/ # /w means a-z0-9
	# Can also do /[A-Z][a-z]/
	#\b represents the boundary of a word
end