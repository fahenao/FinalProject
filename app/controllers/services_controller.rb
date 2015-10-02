class ServicesController < ApplicationController

  def create
    @service = Service.new(service_params)
    if @service.save
      redirect_to '/'
    else
      redirect_to '/', notice: 'Service not created.'
    end
  end

  def new
  end


  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def service_params
    params.require(:service).permit(:name, :description, :price)
  end


end
