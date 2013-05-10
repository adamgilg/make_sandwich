MakeSandwich::Application.routes.draw do
  devise_for :users
  resources :users, only: :show
  resources :static_pages, only: :show
  resources :sandwiches
  resources :orders
  resources :quotes
  root to: "static_pages#show"
end
