class Recipe < ApplicationRecord
  def ingredients_list
    # upcased_ingredients = []
    # ingredients.split(", ").each do |ingredient|
    #   upcased_ingredients << ingredient.upcase
    # end
    # upcased_ingredients
    ingredients.split(", ").map { |ingredient| ingredient.upcase }
  end
end
