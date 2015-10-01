class UsersController < ApplicationController

	def profile
		@appointment = Appointment.new
		@appointments_list = Appointment.all
		@patient = Patient.new
		@patients = Patient.all
		@appointments = current_user.appointments

		render :profile
	end

	def show
		@user_appointment = current_user.appointments
	end
end
