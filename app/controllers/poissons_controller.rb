class PoissonsController < ApplicationController
  before_action :set_poisson, only: [:show, :destroy]
  def index
    @poissons = Poisson.all
  end

  def show
    @location = Location.new
  end

  def new
    @poisson = Poisson.new
  end

  def create
    @poisson = Poisson.new(poisson_params)
    @poisson.user = current_user
    if @poisson.save
      redirect_to poissons_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @poisson = Poisson.find(params[:id])
    @poisson.destroy
    redirect_to poissons_path, status: :see_other
  end

  private

  def set_poisson
    @poisson = Poisson.find(params[:id])
  end

  def poisson_params
    params.require(:poisson).permit(:name, :category, :price)
  end
end
