class ChecklistsController < ApplicationController

def new
  @checklist = Checklist.new(params[:checklist])
end

def show
  @checklist = Checklist.new(params[:checklist])
end
 
end