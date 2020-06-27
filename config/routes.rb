Rails.application.routes.draw do
  devise_for :users
  resources :diaries do
    resources :parises
  end
  resources :genres,only: [:edit, :update, :create, :destroy,]
  resources :likes, only: [:create, :destroy]
  resources :users, only: [:index, :show]
  root to: "top#index"
end
