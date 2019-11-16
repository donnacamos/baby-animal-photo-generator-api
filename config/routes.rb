Rails.application.routes.draw do
  resources :comments
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
 namespace :api do 
  namespace :v1 do 
    resources :photos 
    resources :comments 
  end 
end 
  
end
