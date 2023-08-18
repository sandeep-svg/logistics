Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'shopping_cart' => 'customers#index'
  root 'customers#new'
  post 'signup' => 'customers#create'
  resources :customers
  resources :cards
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'
  post 'add_to_cart' => "shopping_carts#add"
  post 'remove_from_cart' => "shopping_carts#remove"
  post 'clear_cart' => "shopping_carts#clear"
end
