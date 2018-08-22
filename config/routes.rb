Rails.application.routes.draw do
  resources :concerts
  resources :tickets
  resources :fans
  resources :artists
  resources :venues
  patch '/cart', to: 'cart#update', as: 'add_to_cart'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
