Rails.application.routes.draw do
  devise_for :users
  resources :recipes

  resources :cuisines, only: [:new, :create, :index, :edit, :update, :show]
  resources :descriptions, only: [:new, :create, :index, :edit, :update, :show]
  resources :preferences, only: [:new, :create, :index, :edit, :update, :show]
  resources :users, only: [:show]

  root "recipes#index"
end
