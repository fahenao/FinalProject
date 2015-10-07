class Api::AppointmentsController < ApplicationController
	def show
		@date = Date.parse(params[:date])
		@appointments = Appointment.where("(start_time > ?) AND (start_time < ?)", @date, @date+1)

		render json: @appointments
	end
end