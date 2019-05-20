Rails.application.routes.draw do
  devise_for :users
  root to: "messages#index"
  resources :massages
  resources :users, only: [:edit, :update]
end
