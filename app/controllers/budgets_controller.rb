class BudgetsController < ApplicationController

	def index
		@budget = Budget.new
	end

	def create
		@budget = Budget.create(budget_params)
		redirect_to budget_path(@budget)
	end

	def show
		@budget = Budget.find(params[:id])
		@total_budget = @budget.calculate_budget
	end

	private
	def budget_params
		params.require(:budget).permit(:speculated_amount, :saved, :months_until, :monthly_savings)
	end

end
