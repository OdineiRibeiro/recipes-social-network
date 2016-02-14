class DescriptionsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :update, :create, :index]
  before_action :is_admin, only: [:new, :create, :edit, :update, :index]

  def index
    @descriptions = Description.order :name
  end

  def new
    @description = Description.new
  end

  def create
    @description = Description.new(description_params)
    if @description.save
      redirect_to descriptions_path
    else
      render action: 'new'
    end
  end

  def edit
    @description = Description.find(params[:id])
  end

  def update
    @description = Description.find(params[:id])
    if @description.update_attributes(description_params)
      redirect_to descriptions_path
    else
      render action: 'edit'
    end
  end

  private

  def description_params
    params.require(:description).permit(:name)
  end

  def is_admin
    if current_user.admin == false
      redirect_to root_path
    end
  end
end
