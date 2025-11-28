Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check


  get "/authors" => "authors#index"

  get "/authors/:id" => "authors#show"

  post "/authors" => "authors#create"

  patch "/authors/:id" => "authors#update"

  delete "/authors/:id" => "authors#destroy"
  
end
