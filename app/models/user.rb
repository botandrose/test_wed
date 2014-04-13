class User < ActiveRecord::Base
	validates :name, presence: true
	validates :user_name, presence: true
	validates :email, presence: true
	validates :location, presence: true
	validates :role, presence: true
	validates :total_budget, presence: true
	
end