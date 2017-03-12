Rails.application.routes.draw do
  get "/" => "recipes#index"
  
  get "/recipes" => "recipes#index"
  get "/recipes/new" => "recipes#new"
  get "/recipes/:id" => "recipes#show"
end
