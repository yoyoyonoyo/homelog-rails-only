Rails.application.routes.draw do
  devise_for :users
  resources :diaries,only: [:index, :new, :edit, :create, :update, :destroy]
  resources :parises,only: [:index, :update, :create, :destroy,] do
    resources :likes, only: [:create, :destroy]
  end
  resources :genres,only: [:update, :create, :destroy,]
  resources :users, only: [:index, :edit, :update]
  root to: "top#index"
end
