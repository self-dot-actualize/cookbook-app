class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    recipe = Recipe.new(
      title: params[:form_title],
      chef: params[:form_chef],
      ingredients: params[:form_ingredients],
      directions: params[:form_directions]
    )
    recipe.save
    redirect_to "/recipes"
  end

  def show
    recipe_id = params[:id]
    @recipe = Recipe.find_by(id: recipe_id)
    render "show.html.erb"
  end

  def edit
    recipe_id = params[:id]
    @recipe = Recipe.find_by(id: recipe_id)
    render "edit.html.erb"
  end

  def update
    recipe_id = params[:id]
    @recipe = Recipe.find_by(id: recipe_id)
    @recipe.title = params[:form_title]
    @recipe.chef = params[:form_chef]
    @recipe.ingredients = params[:form_ingredients]
    @recipe.directions = params[:form_directions]
    @recipe.save
    render "update.html.erb"
  end

  def destroy
    recipe_id = params[:id]
    @recipe = Recipe.find_by(id: recipe_id)
    @recipe.destroy
    render "destroy.html.erb"
  end
end
