Rails.application.routes.draw do
  resources :addresses
  resources :order_products
  resources :orders
  resources :products
  root to: 'admin#home'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
