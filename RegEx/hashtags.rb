# Write a function that takes a string and returns an array of any hashtags it contains:

# get_tags("Some guy won't hire women because they get pregnant #rorosyd #smdh #misandry")

# # => ['#rorosyd', '#smdh', '#misandry']

require 'pry'

regex = /#\S+/

mysoginy = %w(Some guy won't hire women because they get pregnant #rorosyd #smdh #misandry)

empty_array = []

mysoginy.each do |hashtag|
  if hashtag.match(regex)
    # hashtag.
    empty_array.push(hashtag)

  end
end

p empty_array


# ## Solution with SCAN
# HASHREGEX = /(#\w+)/
# def getTags(string)
# 	string.scan(HASHREGEX).to_a.flatten
# end

