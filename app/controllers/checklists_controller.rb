class ChecklistsController < ApplicationController

 def new
   @budget = Budget.new(params[:budget])
 end
end