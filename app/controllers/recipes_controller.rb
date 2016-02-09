class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]
  before_action :set_collections, only: [:new, :edit]

  def index
    @recipes = Recipe.order :name
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy

    redirect_to action: "index"
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.save
    redirect_to(action: "show", id: @recipe)
  end

  private

  def set_collections
    @cuisines = Cuisine.order :name
  end
  # Use callbacks to share common setup or constraints between actions.
  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def recipe_params
    params.require(:recipe).permit(:cuisine_id, :name, :yield,
                                   :preparation_time, :ingredients, :instructions,
                                   :photo)
  end
end
