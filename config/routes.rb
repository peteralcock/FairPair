Rails.application.routes.draw do
  devise_for :users

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
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "admin/sprints#index"
end
