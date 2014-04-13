class User < ActiveRecord::Base
	has_secure_password
	validates :name, presence: true
	validates :password_digest, presence: true
	validates :user_name, presence: true
	validates :email, presence: true
	validates :location, presence: true
	validates :role, presence: true
	validates :total_budget, presence: true
	validates_uniqueness_of :email

end