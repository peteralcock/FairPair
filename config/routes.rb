Rails.application.routes.draw do
  namespace :admin do
      resources :sprints
      resources :pto_requests
      resources :projects
      resources :pairings
      resources :developers
      resources :users

      root to: "sprints#index"
    end
  resources :projects
  resources :pto_requests
  resources :pairings
  resources :sprints
  resources :developers
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
