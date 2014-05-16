class CreateBudgets < ActiveRecord::Migration
  def change
    create_table :budgets do |t|
      t.string :speculated_amount
      t.string :saved
      t.integer :months_until
      t.string :monthly_savings

      t.timestamps
    end
  end
end
