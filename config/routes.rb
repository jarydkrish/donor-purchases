Rails.application.routes.draw do
  resources :order_items
  resources :orders
  resources :care_package_products
  resources :products
  resources :care_packages

  root 'pages#home'
end
