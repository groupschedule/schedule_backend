Rails.application.routes.draw do
  resources :announcements
  resources :comments
  resources :sessions
  resources :cohorts
  resources :students
  resources :technical_mentors
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


  # get '/home', to: 'application#home'
  # get '/login', to: 'application#login'
end
