Rails.application.routes.draw do
  resources :line_items
  resources :carts
  get 'about/about'
  get 'home/home'
  root 'home#home'
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
