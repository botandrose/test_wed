class ChecklistsController < ApplicationController

  def new
    @checklist = Checklist.new(params[:checklist])
  end

  def create
    @checklist = Checklist.new(params[:checklist])
  end
 
end