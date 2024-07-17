Rails.application.routes.draw do
  namespace :users do
    get 'pages/dashboard'
    get 'pages/profile'
  end

  devise_for :users, controllers: { 
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    confirmations: 'users/confirmations',
    unlocks: 'users/unlocks',
    # omniauth_callbacks: 'users/omniauth_callbacks'
  }

  authenticated :user do
    resources :matches
    root to: "users/pages#dashboard", as: :authenticated_root
    get "/profile", to: "users/pages#profile", as: :profile
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get '/terms-of-service', to: 'pages#terms_of_service', as: :terms_of_service

  # Defines the root path route ("/")
  # root "devise/registrations#new" # sign up path
  root "pages#index"

end
