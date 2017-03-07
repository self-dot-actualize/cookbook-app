Rails.application.routes.draw do
  get "/one_recipe_url" => "recipes#one_recipe_method"
end
