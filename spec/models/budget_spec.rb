require 'spec_helper'


describe Budget do
	it 'is initialized with a speculated amount, an amount saved, months until wedding and monthly savings amount' do
		test_budget = Budget.new("10000", "7000", "9", "200")
		test_budget.should be_an_instance_of Budget
	end

	it 'should take in values and return a calculated total' do
		test_budget = Budget.new("10000", "7000", "9", "200")
		test_budget.calculate_budget.should eq "8800"
	end
end