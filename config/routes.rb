Rails.application.routes.draw do
  resources :items, only: [:index]



  resources :users, only: [:show]

  # #custom route 
  # get "/users/:id", to: "users#show"


  
end
