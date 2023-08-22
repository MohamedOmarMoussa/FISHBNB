class LocationsController < ApplicationController

    before_action :set_location, only: [:show, :edit, :update, :destroy]

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
    @location = Location.new (location_params)
    if @location.save
      redirect_to :poissons_path, notice: "location created"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @location.update
      redirect_to :poissons_path, notice: "location updated"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @location.destroy
    redirect_to :locations_path, notice: "cancelled!"
  end

  private

  def set_location
    @location = Location.find(params:[id])
  end

  def location_params
    params.require(:location).permit(:begin_date, :end_date, :poisson_id, :user_id)
  end
end
