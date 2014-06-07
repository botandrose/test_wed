class BudgetsController < ApplicationController

  def index
    @budget = Budget.new
  end

  def create
    @budget = Budget.new(params[:budget])
  end

  def show
    @budget = Budget.new(params[:budget])
  end

end
