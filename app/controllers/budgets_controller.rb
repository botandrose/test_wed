class BudgetsController < ApplicationController

  def index
    @budget = Budget.new
  end

  def create
    @budget = Budget.new(params[:budget])
    redirect_to :show
  end

end
