Rails.application.routes.draw do
  devise_for :users

  root to: "tweets#index"
  resources :users
  resources :tweets
  resources :comments

  #Routes for API
  namespace :api do 
    resources :tweets, only: [:index, :show]
  end
end
