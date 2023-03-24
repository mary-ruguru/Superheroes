Rails.application.routes.draw do
  resources :powers
  resources :hero_powers
  resources :heroes, only: %i[ index show ]
  resources :hero_powers, only: %i[ index show create]
  resources :heros
  

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  
end
