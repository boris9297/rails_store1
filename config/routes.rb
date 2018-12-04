Rails.application.routes.draw do
  # get 'access/new'
  # get 'access/create'
  # get 'access/destroy'
  get 'admin', to: "admin#index"
  get 'login', to: "access#new"
  post 'login', to: 'access#create'
  delete 'logout', to: 'access#destroy'

  resources :users
  resources :orders
  resources :lineitems
  resources :carts
  resources :products
  root 'shopper#index', as: 'root' #把主页指向shopper/index
  get 'shopper', to: 'shopper#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
