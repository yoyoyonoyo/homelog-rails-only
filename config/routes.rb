Rails.application.routes.draw do
  devise_for :users
  resources :diaries do
    resources :parises
  end
  resources :genres,only: [:edit, :update, :create, :destroy,]
  resources :likes, only: [:create, :destroy]
  # resources :likes, only: [:create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "top#index"
end
