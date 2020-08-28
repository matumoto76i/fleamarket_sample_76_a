Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }
  root to: 'posts#index'
  resources :users, only: [:index, :new, :create]
  get 'confirm', to: 'posts#confirm'
  resources :products, only: [:index, :new, :create]
end
