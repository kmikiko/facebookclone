Rails.application.routes.draw do
  get 'sessions/new'
  root to: "home#index"
  resources :facebookclones
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]
end
