namespace :db do 
	desc "Destroy and regenerate the database with new seed data"
	task :regenerate => :environment do 
		Rake::Task['db:drop'].invoke
		Rake::Task['db:create'].invoke
		Rake::Task['db:migrate'].invoke
		Rake::Task['db:seed'].invoke
	end
	# rake db:reset also does the first 3 steps, but doesn't do seed
end
