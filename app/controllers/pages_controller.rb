class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @poissons = Poisson.all
    @locations = Location.where(user: current_user)
  end
end
