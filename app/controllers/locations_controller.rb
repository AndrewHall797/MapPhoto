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
      redirect_to '/signip'
    end
  end

  def index
    
  end

  def delete
    
  end
end
