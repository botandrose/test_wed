# requiring active_model is necessary for the budget model to inherit from the ActiveRecord model base, but without requiring database support
require 'active_model' 

class Budget 
  include ActiveModel::Model

  def total_budget
    months_until * monthly_savings + amount_saved
  end

  def speculated_amount= value
    @speculated_amount = value.to_i
  end

  def speculated_amount
    @speculated_amount || 0
  end

  def amount_saved= value
    @amount_saved = value.to_i
  end

  def amount_saved
    @amount_saved || 0
  end

  def months_until= value
    @months_until = value.to_i
  end

  def months_until
    @months_until || 0
  end

  def monthly_savings= value
    @monthly_savings = value.to_i
  end

  def monthly_savings
    @monthly_savings || 0
  end
end
