class PoissonsController < ApplicationController
  before_action :set_poisson, only: [:show, :destroy]
  def index
    @poissons = Poisson.all
    if params[:query].present?
      sql_subquery = "name ILIKE :query OR category ILIKE :query"
      @poissons = @poissons.where(sql_subquery, query: "%#{params[:query]}%")
    end

    @users = User.joins(:poissons).where(poissons: { id: @poissons })
    # The `geocoded` scope filters only flats with coordinates
    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude
      }
    end
  end

  def profil
    @poissons = Poisson.select { |poisson| poisson.user == current_user }
  end

  def show
    @location = Location.new
    @disable_date = @poisson.locations.map do |location|
      { from: location.begin_date, to: location.end_date }
    end
    @markers = []
    @markers << { lat: @poisson.user.latitude, lng: @poisson.user.longitude }
  end

  def new
    @poisson = Poisson.new
  end

  def create
    # @poisson = Poisson.new(params[:poisson])
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
