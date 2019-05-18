 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
 namespace :api do
    namespace :v1 do
      get "users/profile", to: 'users#profile', as: 'profile' 
      resources :users
      resources :photos
      resources :albums
      resources :album_photos
      resources :album_users
   end
 end


 post "/auth/create", to: "auth#create"
 get 'auth/show', to: 'auth#show'


end
