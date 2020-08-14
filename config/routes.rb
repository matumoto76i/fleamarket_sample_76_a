Rails.application.routes.draw do
  root to: 'posts#index'
  resources :products, only: [:index, :new, :create]
end
