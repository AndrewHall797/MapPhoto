class LocationsController < ApplicationController
  def new
    @location = Location.new
  end

  def create
    @location = Location.new(params.require(:location).permit(:image,:description,:title,))
    @location.user_id = session[:user_id]
    
    if @location.save
      redirect_to '/mainpage'
    else
      redirect_to '/mainpage'
    end
  end

  def index
    
  end

  def delete
    @location = Location.find(params[:id])
    @locations.destroy
  end
end
