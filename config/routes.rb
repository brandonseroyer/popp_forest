Rails.application.routes.draw do
  root to: 'home#index'
  resources :home, only: [:index]
  resources :about, only: [:index]
  resource :products, only: [:index]
  resources :contact , only: [:index]
end
