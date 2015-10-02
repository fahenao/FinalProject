class UsersController < ApplicationController

	def profile
		@appointment = Appointment.new
		@patient = Patient.new
		@service = Service.new
		@appointments_list = Appointment.all
		@patients = Patient.all
		@services = Service.all
		@appointments = current_user.appointments
		render :profile
	end

	def show
		@user_appointment = current_user.appointments
	end
end
