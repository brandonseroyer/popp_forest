Rails.application.routes.draw do
  root to: 'home#index'
  resources :home, only: [:index]
  resources :about, only: [:index]
  resources :products, only: [:index]
  resources :contacts , only: [:index, :new, :create, :destroy]
end
