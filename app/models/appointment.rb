class Appointment < ActiveRecord::Base
	belongs_to :users
	belongs_to :patient
	has_many :appointment_services
	has_many :services, through: :appointment_services
	accepts_nested_attributes_for :appointment_services
end
