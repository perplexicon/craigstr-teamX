Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :index]
  resources :regions, only: [:new, :create, :show] do
    resources :categories, only: [:new, :create, :show]
  end


  root "regions#index"
end
