Rails.application.routes.draw do
  resources :order_items
  resources :orders
  resources :care_package_products
  resources :products
  resources :care_packages
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
