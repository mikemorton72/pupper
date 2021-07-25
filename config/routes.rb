Rails.application.routes.draw do
  # Puppies
  get "/puppies" => "puppies#index"
  get "/puppies/:id" => "puppies#show"
  post "puppies" => "puppies#create"

end
