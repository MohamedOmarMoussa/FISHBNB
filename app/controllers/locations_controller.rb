class LocationsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_location, only: [:show]
  before_action :set_poisson, only: %i[new create]

  def index
    @locations = current_user.locations
  end

  def show
    @location
  end

  def new
    @poisson = Poisson.find(params[:id])
    @location = Location.new
  end

  def edit
  end

  def create
    @location = Location.new(location_params)
    @location.user = current_user
    @location.poisson = Poisson.find(params[:poisson_id])
    if @location.save
      redirect_to location_path(@location)
    else
      redirect_to poisson_path(@poisson)
    end
  end

  private

  def set_location
    @location = Location.find(params[:id])
  end

  def set_poisson
    @poisson = Poisson.find(params[:poisson_id])
  end

  def location_params
    params.require(:location).permit(:begin_date, :end_date)
  end
end
