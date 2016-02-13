class CuisinesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :update, :create]
  before_action :is_admin

  def index
    @cuisines = Cuisine.order :name
  end

  def new
    @cuisine = Cuisine.new
  end

  def create
    @cuisine = Cuisine.new(cuisine_params)
    if @cuisine.save
      redirect_to cuisines_path
    else
      render action: 'new'
    end
  end

  def edit
    @cuisine = Cuisine.find(params[:id])
  end

  def update
    @cuisine = Cuisine.find(params[:id])
    if @cuisine.update_attributes(cuisine_params)
      redirect_to cuisines_path
    else
      render action: 'edit'
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
