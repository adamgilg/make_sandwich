MakeSandwich::Application.routes.draw do
  devise_for :users
  resources :static_pages, only: :show
  resources :sandwiches
  resources :orders
  root to: "static_pages#show"
end
