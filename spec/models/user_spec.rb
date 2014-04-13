require 'spec_helper'

describe User do
	it { should validate_presence_of :name }
	it { should validate_presence_of :user_name }
	it { should validate_presence_of :role }
	it { should validate_presence_of :location }
	it { should validate_presence_of :email }
	it { should validate_presence_of :total_budget }
	it { should validate_uniqueness_of :email }
	it { should have_secure_password }
end