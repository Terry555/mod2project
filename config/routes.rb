Rails.application.routes.draw do
  resources :concerts
  resources :fans
  resources :artists
  resources :venues
  resources :tickets
  # get '/cart', to: 'tickets#new', as: 'cart'
  # patch '/cart', to: 'cart#update', as: 'add_to_cart'
  # put '/cart', to: 'cart#destroy', as: 'clear_cart'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
