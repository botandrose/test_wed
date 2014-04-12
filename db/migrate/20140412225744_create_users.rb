class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :name
    	t.string :user_name
    	t.string :password_digest
    	t.string :location
    	t.string :email
    	t.string :role
    	t.decimal :total_budget
    end
  end
end
