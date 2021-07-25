Rails.application.routes.draw do
  # Puppies
  get "/puppies" => "puppies#index"

end
