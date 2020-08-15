Rails.application.routes.draw do
  root to: 'posts#index'
  get 'confirm', to: 'posts#confirm'
  resources :products, only: [:index]
end
