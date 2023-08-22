class LocationsController < ApplicationController
  before_action :set_location, only: %i[show edit update destroy]

  def index
    @locations = Location.all
  end

  def show
  end

  def new
    @location = Location.new
  end

  def edit
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      redirect_to @location, notice: "location created"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @location.update
      redirect_to @location, notice: "location updated"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @location.destroy
    redirect_to locations_url, notice: "location cancelled!"
  end

  private

  def set_location
    @location = Location.find(params[:id])
  end

  def location_params
    params.require(:location).permit(:begin_date, :end_date)
  end
end
