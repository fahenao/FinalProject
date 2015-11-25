class UsersController < ApplicationController


	def profile
		@appointment = Appointment.new
		@patient = Patient.new
		@service = Service.new
		@appointments_list = Appointment.all
		@patients = Patient.all
		@services = Service.all
		@appointments = current_user.appointments
		@appointment_service = @appointment.appointment_services.new
		if @services == 0
			flash[:notice] = "Create a service first"
		end
		render :profile
	end

	def appointments_list
		@appointment_list = []
		@patients.find(a.patient_id).fullname
	end

	def show
		@user_appointment = current_user.appointments
	end
end
