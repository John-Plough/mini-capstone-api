Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  post "/users" => "users#create"

  post "/sessions" => "sessions#create"
  delete "/sessions" => "sessions#destroy"


  get "/products" => "products#index"
  post "/products" => "products#create"
  get "/products/:id" => "products#show"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"
end
