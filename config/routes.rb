Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/parks', to: 'parks#index'
  post '/users', to: 'users#create'
  post '/desired-parks', to: 'desired_parks#create'
  post '/visited-parks', to: 'visited_parks#create'
end
