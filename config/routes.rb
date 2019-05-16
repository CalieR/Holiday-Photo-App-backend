 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
 namespace :api do
   namespace :v1 do
     resources :users
     resources :photos
     resources :albums
   end
 end

# check this tomorrow:
 post "/auth/create", to: "auth#create"
 get 'auth/show', to: 'auth#show'

end
