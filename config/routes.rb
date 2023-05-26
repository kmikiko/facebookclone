Rails.application.routes.draw do
  root to: "home#index"
  resources :facebookclones
  resources :users, only: [:new, :create, :show]
end
