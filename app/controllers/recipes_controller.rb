class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]
  before_action :set_collections, only: [:new, :edit, :show, :update, :create, :index]
  before_action :authenticate_user!, only: [:new, :edit, :update, :create, :destroy]

  def index
    #@recipes = Recipe.where('preference_id = ?', 3)
    @recipes = Recipe.last(20)
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to action: 'index'
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to(action: 'show', id: @recipe)
    else
      render action: 'new'
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update_attributes(recipe_params)
      redirect_to(action: 'show', id: @recipe)
    else
      render action: 'edit'
    end
  end

  private

  def set_collections
    @cuisines = Cuisine.order :name
    @difficulties = Difficulty.all
    @descriptions = Description.all
    @preferences = Preference.all
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name, :yield, :preparation_time,
                                   :ingredients, :instructions, :avatar,
                                   :cuisine_id, :difficulty_id, :description_id,
                                   :preference_id)
  end
end
