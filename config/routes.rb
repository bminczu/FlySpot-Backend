Rails.application.routes.draw do
  post "/rails/active_storage/direct_uploads", to: "direct_uploads#create"
  resources :users
  resources :reviews
  resources :posts



  namespace :api do 
    namespace :v1 do 
      resources :users
      post '/auth', to: 'auth#create' 

      get '/current_user', to: 'auth#show'
    end
  end
end


