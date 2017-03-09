Rails.application.routes.draw do
  resources :layouts
  resources :slideshow do
    resources :images
  end
  resources :products
  resources :brands do
    resources :products
  end
  resources :stores
  resources :session
  root to: 'layouts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
