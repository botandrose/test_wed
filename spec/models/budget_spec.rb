require 'spec_helper'

describe Budget do

	it { should validate_presence_of :speculated_amount }
	it { should validate_presence_of :amount_saved }
	it { should validate_presence_of :months_until }
	it { should validate_presence_of :monthly_savings }

	it 'should take in required values and return a calculated total' do
		test_budget = Budget.create(speculated_amount: "10000", amount_saved: "7000", months_until: "9", monthly_savings: "200")
		test_budget.calculate_budget.should eq "8800"
	end

end