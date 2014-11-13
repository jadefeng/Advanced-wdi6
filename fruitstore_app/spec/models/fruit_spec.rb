# == Schema Information
#
# Table name: fruits
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  name       :string(255)
#  type       :string(255)
#

require 'rails_helper'

RSpec.describe Fruit, :type => :model do
  # Need to put in some tests!
  describe "an apple" do 
  	before do 
  		@apple = Apple.create(:name => 'Granny Smith')
  	end

  	it "should not be squishy" do
  		expect(@apple.squishy?).to eq(false)
  		#Also works: @apple.squishy.should != true
  	end

  	it "should remember what class it is using single table inheritance (STI)" do
  		apple = Fruit.find(@apple.id)
  		expect(apple.class).to eq(Apple)
  		expect(apple.is_a? Fruit).to eq(true)
  		expect(apple.class.ancestors).to include(Fruit)
  	end
  end

  describe "a pear" do
  	before do 
  		@pear = Pear.create(:name => 'Nashi')
  	end

  	it "should be kind of squishy" do
  		expect(@pear.squishy?).to eq(true)
  	end

  	it "should remember what class it is using single table inheritance (STI)" do
  		pear = Fruit.find(@pear.id)
  		expect(pear.class).to eq(Pear)
  		expect(pear.is_a? Fruit).to eq(true)
  		expect(pear.class.ancestors).to include(Fruit)
  	end
  end

end
