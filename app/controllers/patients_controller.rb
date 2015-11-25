class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :update, :destroy]

  def index
    @patients = Patient.all
    @patient = Patient.new
  end

  def edit
  end

	def create
    @patient = Patient.new(patient_params)
    if @patient.save
      redirect_to '/'
    else
      redirect_to patients_path, notice: 'Patient not created. Try again.' 
    end
  end

  def update
    respond_to do |format|
      if @patient.update(patient_params)
        format.html { redirect_to patients_path, notice: 'Patient was successfully updated.' }
        format.json { render :show, status: :ok, location: @appointment }
      else
        format.html { render :edit }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @patient.destroy
    redirect_to patients_path
  end

  def new
  end

  private
    def set_patient
      @patient = Patient.find(params[:id])
    end
   
    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_params
      params.require(:patient).permit(:fullname, :phone)
    end

end
