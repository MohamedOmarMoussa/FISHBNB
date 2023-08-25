class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @poissons = Poisson.all.first(3)
    @locations = Location.where(user: current_user)
  end
end
