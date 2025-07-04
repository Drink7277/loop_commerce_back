Rails.application.routes.draw do
  mount_avo
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get "/" => "home#index"
  # Defines the root path route ("/")
  # root "posts#index"

  namespace :api do
    resources :products, only: [ :index ]
    resources :orders, only: [ :create ]
    resource :users, only: [ :create, :show ] do
      post :sign_in,  to: "users#sign_in"
      delete :sign_out, to: "users#sign_out"
    end
  end
end
