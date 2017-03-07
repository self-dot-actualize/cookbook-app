class RecipesController < ApplicationController
  def one_recipe_method
    @recipe = Recipe.first
    render "one_recipe.html.erb"
  end
end
