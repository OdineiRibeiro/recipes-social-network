Rails.application.routes.draw do
  devise_for :users
  resources :recipes

  resources :cuisines, only: [:new, :create]

  root "recipes#index"
end
