class PatientsController < ApplicationController

	def create
    @patient = Patient.new(patient_params)
    if @patient.save
      redirect_to '/'
    else
      redirect_to '/', notice: 'Patient not created.' 
    end
  end

  def new
  end

  private
   
    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_params
      params.require(:patient).permit(:fullname, :phone)
    end

end
