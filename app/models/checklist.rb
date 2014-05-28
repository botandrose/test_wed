# requiring active_model is necessary for the budget model to inherit from the ActiveRecord model base, but without requiring database support
require 'active_model' 

class Checklist 
  include ActiveModel::Model

  def total_budget= value
    @total_budget = value
  end

  def total_budget
    @total_budget
  end

end