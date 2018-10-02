class RecipesController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]

  def index
    # @recipes = Recipe.all
    @recipes = Recipe.search(params[:search])
    @ingredients = Ingredient.all
  end

  def show

  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.create(recipe_params)
    redirect_to @recipe
  end

  def edit

  end

  def update
    @recipe.update(recipe_params)
    redirect_to @recipe
  end

  def destroy
    @recipe.destroy
    redirect_to recipes_path
  end

  private

  def find_recipe
    @recipe = Recipe.find_by(id: params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:title, :description, :like_count, :rating, :search)
  end

end
