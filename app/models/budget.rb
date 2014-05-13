class Budget < ActiveRecord::Base

	validates :speculated_amount, presence: true
	validates :saved, presence: true
	validates :months_until, presence: true
	validates :monthly_savings, presence: true

	def calculate_budget
		saved_before_wedding = (self.months_until.to_i * self.monthly_savings.to_i)
		total_budget = (saved_before_wedding + self.saved.to_i).to_s
	end

end