class PreferencesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :update, :create, :index, :show]
  before_action :is_admin, only: [:new, :create, :edit, :update, :index]
  before_action :set_collection, only: [:show]

  def index
    @preferences = Preference.order :name
  end

  def new
    @preference = Preference.new
  end

  def create
    @preference = Preference.new(preference_params)
    if @preference.save
      redirect_to preferences_path
    else
      render action: 'new'
    end
  end

  def edit
    @preference = Preference.find(params[:id])
  end

  def update
    @preference = Preference.find(params[:id])
    if @preference.update_attributes(preference_params)
      redirect_to preferences_path
    else
      render action: 'edit'
    end
  end

  def show
    
  end

  private

  def set_collection
    @recipes = Recipe.where('preference_id = ?', params[:id])
  end

  def preference_params
    params.require(:preference).permit(:name)
  end

  def is_admin
    if current_user == nil || current_user.admin == false
      redirect_to root_path
    end
  end
end
