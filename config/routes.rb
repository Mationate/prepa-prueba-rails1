Rails.application.routes.draw do
  get 'products/index', to: 'products#index'
  post 'products', to: 'products#create'
  get 'products/:id', to: 'products#show', as: 'product'
  get 'products/:id/edit', to: 'products#edit', as:'edit_product'
  patch 'products/:id', to: 'products#update'
  delete 'products/:id', to: 'products#destroy'

  root 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
