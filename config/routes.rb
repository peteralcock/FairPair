Rails.application.routes.draw do
  resources :pto_requests
  resources :pairings
  resources :sprints
  resources :developers
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
