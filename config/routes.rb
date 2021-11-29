Rails.application.routes.draw do
  root 'welcome#index'

  resources :suppliers, only: :index
  resources :products, only: :index
end
