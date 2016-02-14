class UsersController < ApplicationController
  before_action :set_collections, only: [:show]

  def show
    @user = User.find(params[:id])
  end

  private

  def set_collections
    @user = User.find(params[:id])
    @recipes = Recipe.where('user_id = ?', @user.id)
  end
end
