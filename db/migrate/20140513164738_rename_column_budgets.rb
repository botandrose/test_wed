class RenameColumnBudgets < ActiveRecord::Migration
  def change
  	rename_column :budgets, :saved, :amount_saved
  end
end
