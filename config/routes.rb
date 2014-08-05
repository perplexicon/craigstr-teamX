require "monban/constraints/signed_in"

Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :index]

  constraints Monban::Constraints::SignedIn.new do
    root "regions#index"
  end
end


  




  