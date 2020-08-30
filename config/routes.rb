Rails.application.routes.draw do
  root to: 'posts#index'
  get 'confirm', to: 'posts#confirm'
  resources :products do
    collection do
      get 'get_category_children', defaults: { fomat: 'json'}
      get 'get_category_grandchildren', defaults: { fomat: 'json'}
    end
  end
end