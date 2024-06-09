Rails.application.routes.draw do
  root "users#new"
  get "/signup", to: "users#new"
  resources :users, only: [:new, :create, :show, :index]
  resources :practice_records

  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
end
