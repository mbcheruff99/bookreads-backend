Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check


  get "/authors" => "authors#index"
  get "/books" => "books#index"

  get "/authors/:id" => "authors#show"
  get "books/:id" => "books#show"

  post "/authors" => "authors#create"
  post "/books" => "books#create"

  patch "/authors/:id" => "authors#update"
  patch "/books/:id" => "books#update"

  delete "/authors/:id" => "authors#destroy"
  delete "/books/:id" => "books#destroy"

end
