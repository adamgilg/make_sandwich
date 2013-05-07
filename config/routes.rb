MakeSandwich::Application.routes.draw do
  devise_for :users

  resources :sandwiches
end
