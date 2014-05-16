def create_budget(attributes={})
  defaults = {
    speculated_amount: "10000",
    saved: "7000",
    months_until: "9",
    monthly_savings: "200"
  }

  attributes = defaults.merge(attributes)
  Budget.create!(attributes)
end
