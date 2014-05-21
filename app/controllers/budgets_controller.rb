class BudgetsController < ApplicationController

  def index
    @budget = Budget.new
  end

  def create
    @budget = Budget.new(params[:budget])
    redirect_to budget_path
  end

  def show
    @budget = Budget.new(params[:budget])

  end

end
