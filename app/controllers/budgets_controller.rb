class BudgetsController < ApplicationController

	def index
		@budget = Budget.new
	end

	def create
		@budget = Budget.create(budget_params)
		render :show
	end

	private

	def budget_params
		params.require(:budget).permit(:speculated_amount, :saved, :months_until, :monthly_savings)
	end

end
