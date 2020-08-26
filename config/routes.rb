Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  get 'confirm', to: 'posts#confirm'
  resources :users, only: [:index,:show]
  resources :products, only: [:index, :new, :create]
  resources :card, only: [:new, :show] do
    collection do
      post 'show', to: 'card#show'
      post 'pay', to: 'card#pay'
      post 'delete', to: 'card#delete'
    end
  end
  
end