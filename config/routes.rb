Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/parks', to: 'parks#index'
  get '/users', to: 'users#index'
  post '/users', to: 'users#create'
  post '/desired-parks', to: 'desired_parks#create'
  delete '/desired-parks', to: 'desired_parks#destroy'
  post '/visited-parks', to: 'visited_parks#create'
  delete '/visited-parks', to: 'visited_parks#destroy'
end
