# requiring active_model is necessary for the budget model to inherit from the ActiveRecord model base, but without requiring database support
require 'active_model' 
require 'integer_accessor'

class Budget 
	include ActiveModel::Model
	extend IntegerAccessor

	def total_budget
		months_until * monthly_savings + amount_saved
	end
# the integer_accessor is eliminating the need to have methods for each input that allows them to take in a value and convert it to an integer then display it (or a default value)
	integer_accessor :speculated_amount, :amount_saved, :months_until, :monthly_savings
end