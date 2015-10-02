class Appointment < ActiveRecord::Base
	belongs_to :users
	belongs_to :patient
	has_many :services, :through => :users
end
