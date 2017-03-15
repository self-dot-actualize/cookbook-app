class Recipe < ApplicationRecord
  def ingredients_list
    # upcased_ingredients = []
    # ingredients.split(", ").each do |ingredient|
    #   upcased_ingredients << ingredient.upcase
    # end
    # upcased_ingredients
    ingredients.split(", ").map { |ingredient| ingredient.upcase }
  end

  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end

  def friendly_prep_time
    hours = prep_time / 60
    minutes = prep_time % 60
    result = ""
    result += "#{hours} hours" if hours > 0
    result += "#{minutes} minutes" if minutes > 0
    result
  end
end
