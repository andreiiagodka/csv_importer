Rails.application.routes.draw do
  root 'suppliers#index'

  resources :suppliers, only: :index
  resources :products, only: :index
end
