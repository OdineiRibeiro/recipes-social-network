class PreferencesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :update, :create]
  before_action :is_admin

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

  private

  def preference_params
    params.require(:preference).permit(:name)
  end

  def is_admin
    if current_user.admin == false
      redirect_to root_path
    end
  end
end
