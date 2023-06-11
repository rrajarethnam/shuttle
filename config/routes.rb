Rails.application.routes.draw do
  root 'shuttle#index'
  post '/update_location', to: 'shuttle#update_location'
  get '/locations', to: 'shuttle#locations'

  # other routes...
end
