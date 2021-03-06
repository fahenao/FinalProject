class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :edit, :update, :destroy]

  def index
    @services = Service.all
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    if @service.save
      redirect_to '/'
    else
      redirect_to services_path, notice: 'Service not created.'
    end
  end

  def update
    @service.update(service_params)
    redirect_to services_path
  end

  def destroy
    @service.destroy
    redirect_to services_path
  end

  def new
  end

  def edit
  end

  private

  def set_service
    @service = Service.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def service_params
    params.require(:service).permit(:name, :description, :price)
  end


end