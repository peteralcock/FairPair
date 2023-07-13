Rails.application.routes.draw do
  resources :schedules
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
  resources :projects do
    resources :sprints do
      resources :pairings do
        resources :developers do
          resources :pto_requests
        end
      end
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "admin/sprints#index"
end
