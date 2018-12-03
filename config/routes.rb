Rails.application.routes.draw do
  root 'shopper#index', as: 'root' #把主页指向shopper/index
  get 'shopper', to: 'shopper#index'
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
