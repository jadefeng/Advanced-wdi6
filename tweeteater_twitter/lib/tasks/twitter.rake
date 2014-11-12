namespace :twitter do 
	desc "Nuke the tweet and desc data"
	task :clear => :environment do 
		User.destroy_all
		Tweet.destroy_all
	end

	desc "Create :user_count fake users with lorem"
	task :lorem, [:user_count] => :environment do  |t, args| # Allows us to pass additional data inside
		# Have additional paramter 
		# rake twtter:lorem[10] creates 10 users with tweets
		puts "About to create #{ args[:user_count] }"
		FactoryGirl.create_list :user_with_tweets, args[:user_count].to_i
	end

	desc "Add live tweets from twitter for :query to the database, returning :limit result"
  	task :search, [:query, :limit] => :environment do |t, args|  #:limit - amount of tweets we want to get, :query - word we are looking for
    
    silence_warnings do 	# Turns off the noisy call thing
	    OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
	end

    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "JC8DK19CDyL8MXl9ipT3rz5Av"
      config.consumer_secret     = "mDpXXu9XnBgQ0xg0OWPJKK2yLMkdT1iI6Y9r9OkFgYOGqFgUHh"
      config.access_token        = "2789184356-6cIJBkyQqxGO5vG77TbrkCPxYUawvFuLDxU56Hl"
      config.access_token_secret = "U7ovWkWspSQvDQ7VysjZSqTU6YVQMVpEKkUwIIPYTFQJz"
    end

    client.search("to: #{args[:query]} ", result_type: "recent").take(args[:limit].to_i).collect do |tweet|
      	puts "#{tweet.user.screen_name}: #{tweet.text}"
		User.create :name => tweet.user.screen_name
		Tweet.create :post => tweet.text, :user_id => User.where(:name => tweet.user.screen_name)[0].id
	end

    puts "Search Twitter for #{ args[:query]}" 
    puts "Returning only #{ args[:limit]} tweets"

  end
end