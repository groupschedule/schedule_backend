Rails.application.routes.draw do
  resources :announcements, only: [:index ] #:create]
  resources :comments, only: [:index, :create]
  resources :sessions, only: [:index, :create, :show, :update, :destroy]
  resources :cohorts, only: [:index, :create, :show, :update, :destroy]
  resources :students, only: [:index, :create]
  resources :technical_mentors, only: [:index, :create]

  post '/technical_mentor/signup', to: "technical_mentors#create"
  post '/student/signup', to: "students#create"
  

  post '/auth/login', to: 'technical_mentors#login'
  post '/auth/login', to: 'students#login'
  delete '/logout', to: 'technical_mentors#logout'
  delete '/logout', to: 'students#logout'

 
end
