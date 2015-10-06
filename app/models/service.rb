class Service < ActiveRecord::Base
	has_many :appointment_services
	has_many :appointments, through: :appointment_services
end
