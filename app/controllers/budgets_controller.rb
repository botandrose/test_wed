class BudgetsController < ApplicationController

  def index
    @budget = Budget.new
  end

  def create
    @budget = Budget.new(params[:budget])
    render :index
  end

end
