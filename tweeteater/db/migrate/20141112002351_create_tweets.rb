class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.belongs_to :user 	# Actually creates the relationship automatically
      t.text :post
      t.timestamps
    end
  end
end
