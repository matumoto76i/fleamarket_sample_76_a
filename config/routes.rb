Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :products, only: [:index]
  resources :users, only: [:index, :new, :create]

end
