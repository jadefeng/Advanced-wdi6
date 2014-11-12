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

	desc "Search twitter for :query, returning :limit results"
	task :search, [:query, :limit] => :environment do |t, args| 	# t is task, args is arguments
		puts "Searching twitter for #{ args[:query]}."
		puts "Returning only #{args[:limit]} tweets."
	end
end