Rails.application.routes.draw do
  resources :layouts
  root to: 'layouts#index'
  resources :products
  resources :brands do
    resources :products
  end
  resources :stores
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
