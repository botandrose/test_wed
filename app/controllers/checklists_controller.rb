class ChecklistsController < ApplicationController

  def new
    @checklist = Checklist.new(params[:checklist])
  end

  def create
    @checklist = Checklist.new(params[:checklist])
    @checklist.total_budget = params[:total_budget]
  end
 
end