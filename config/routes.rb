Rails.application.routes.draw do
  root 'welcome#index'
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


