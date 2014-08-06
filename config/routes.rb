Rails.application.routes.draw do

  resources :users, only: [:index]
  resources :regions, only: [:new, :create, :show] do
    resources :categories, only: [:new, :create, :show] do 
      resources :posts, only: [:new, :create, :show, :edit, :update, :destroy]
    end
  end

  get "sign-in" => "sessions#new"
  post "sign-in" => "sessions#create"
  delete "sign-out" => "sessions#destroy"
  get "sign-up" => "users#new"
  post "sign-up" => "users#create"
  
  root "regions#index"
end
