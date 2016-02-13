class CuisinesController < ApplicationController
  before_action :authenticate_user!, only: [:new]
  before_action :is_admin

  def new
    @cuisine = Cuisine.new
  end

  def create
    @cuisine = Cuisine.new(cuisine_params)
    if @cuisine.save
      redirect_to root_path
    else
      render action: 'new'
    end
  end

  private

  def cuisine_params
    params.require(:cuisine).permit(:name)
  end

  def is_admin
    if current_user.admin == false
      redirect_to root_path
    end
  end

end
