class Appointment < ActiveRecord::Base
	belongs_to :user
	belongs_to :patient	
end
