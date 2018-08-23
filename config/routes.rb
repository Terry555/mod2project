Rails.application.routes.draw do
  resources :concerts
  resources :fans
  resources :artists
  resources :venues
  resources :tickets
  resources :fans, except: :edit

  get '/profile', to: 'fans#profile', as: 'profile'
  get '/profile/edit', to: 'fans#edit', as: 'edit_profile'

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

end
