# # Can use Faker to generate random user information
# 10.times do 
# 	User.create :name => Faker::Name.name, :email => Faker::Faker::Internet.email
# end

User.destroy_all
Tweet.destroy_all
 # FactoryGirl.create_list :user, 100

FactoryGirl.create_list :user_with_tweets, 100