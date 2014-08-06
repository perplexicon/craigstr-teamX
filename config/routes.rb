Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :index]
  resources :regions, only: [:new, :create, :show]

  root "regions#index"
end