Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  get 'confirm', to: 'posts#confirm'
  resources :users, only: [:index,:show]
  resources :products, only: [:index, :new, :create]
end