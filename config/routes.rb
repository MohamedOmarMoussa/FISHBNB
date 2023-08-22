Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "poissons", to: "poissons#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :poissons do
    resources :locations, only: %i[create new show]
    # member do
    #   patch :favorite, :unfavorite
    # end
  end
  get "users/:id/profile", to: "pages#profile", as: :user_profile
end
