class Clinic < ActiveRecord::Base
	has_many :users
	has_many :services
end
