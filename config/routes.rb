Rails.application.routes.draw do
  get 'products', to: 'products#index'
  post 'products', to: 'products#create'
  get 'products/favourites', to: 'products#favourites', as: 'favourites'
  get 'products/:id', to: 'products#show', as: 'product'
  get 'products/:id/edit', to: 'products#edit', as:'edit_product'
  patch 'products/:id', to: 'products#update'
  delete 'products/:id', to: 'products#destroy'
  patch 'products/:id/set_favourite', to: 'products#set_favourite', as: 'favourite'
  
  #resources :products,  [:index create show destroy edit update]

  root 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
