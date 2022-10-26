Rails.application.routes.draw do
  resources :announcements, only [:index, ] #:create]
  resources :comments, only [:index, :create]
  resources :sessions
  resources :cohorts
  resources :students, only [:index, :create]
  resources :technical_mentors, only [:index, :create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


  # get '/home', to: 'application#home'
  # get '/login', to: 'application#login'
end
