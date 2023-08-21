class PoissonsController < ApplicationController
  before_action :set_poisson, only: [:show, :destroy]

  def index
    @poissons = Poisson.all
  end

  def show
  end

  def new
    @poisson = Poisson.new
  end

  def create
    @poisson = Poisson.new(params[:poisson])
    if @poisson.save
      redirect_to poisson_path(@poisson)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
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
