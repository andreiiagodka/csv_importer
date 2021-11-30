Rails.application.routes.draw do
  root 'welcome#index'

  resources :suppliers, only: :index
  post 'suppliers/import', to: 'suppliers#import'

  resources :products, only: :index
  post 'products/import', to: 'products#import'
end
