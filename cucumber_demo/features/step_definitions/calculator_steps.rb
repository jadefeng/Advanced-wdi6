Given(/^I have a calculator$/) do
  @calculator = Calculator.new
end

Given(/^I have the number (\d+)$/) do |num|
  @calculator << num
end

When(/^I add them together$/) do
  @result = @calculator.add
end

When(/^I subtract them$/) do
  @result = @calculator.subtract
end

When(/^I multiply them$/) do
	@result = @calculator.multiply
end

When(/^I divide them$/) do
	@result = @calculator.divide
end

Then(/^I should see (\d+) on the terminal$/) do |num|
  assert_equal num.to_i, @result     #check is 12 equal to our result
end


