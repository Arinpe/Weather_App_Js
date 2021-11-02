Rails.application.routes.draw do
  root to: "api/v1/users#index"
  namespace :api do
    namespace :v1 do
      resources :users, only: %i[create show]
      post '/login', to: 'users#login'
      resources :cars, only: %i[index show]
      post '/appointments', to: 'users#new_appointment'
      get '/appointments', to: 'users#get_appointments'
      get '/me', to: 'users#show'
    end
  end
end
