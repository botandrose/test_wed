require './app/models/budget'

describe Budget do
	# the budget possesses the following attributes, and sets the default to 0
	its(:total_budget) { should == 0 }
	its(:speculated_amount) { should == 0 }
	its(:amount_saved) { should == 0 }
	its(:months_until) { should == 0 }
	its(:monthly_savings) { should == 0 }

	describe '#total_budget' do
		it 'calculates months_until * monthly_savings + amount_saved' do
			# ruby knows what 'subject' is, and here subject is the same as using the line: "test_budget = Budget.new"
			subject.months_until = 10
			subject.monthly_savings = 100
			subject.amount_saved = 500
			subject.total_budget.should == 1500
		end
	end

	describe '#speculated_amount=' do
		it 'coerces strings into integers' do
			subject.speculated_amount = "0"
			subject.speculated_amount.should == 0
		end
	end

	describe '#amount_saved=' do
		it 'coerces strings into integers' do
			subject.amount_saved = "0"
			subject.amount_saved.should == 0
		end
	end

	describe '#months_until=' do
		it 'coerces strings into integers' do
			subject.months_until = "0"
			subject.months_until.should == 0
		end
	end

	describe '#monthly_savings=' do
		it 'coerces strings into integers' do
			subject.monthly_savings = "0"
			subject.monthly_savings.should == 0
		end
	end

end