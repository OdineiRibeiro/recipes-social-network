Rails.application.routes.draw do
  devise_for :users
  resources :recipes

  resources :cuisines, only: [:new, :create, :index, :edit, :update]
  resources :descriptions, only: [:new, :create, :index, :edit, :update]

  root "recipes#index"
end
