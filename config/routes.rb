Rails.application.routes.draw do
  resources :student_discussions
  resources :discussions
  resources :announcements, only: [:index ] #:create]
  resources :comments, only: [:index, :create]
  resources :sessions, only: [:index, :create, :show, :update, :destroy]
  resources :cohorts, only: [:index, :create, :show, :update, :destroy]
  resources :students, only: [:index, :create, :show]
  resources :technical_mentors, only: [:index]
  
  post '/technical_mentor/signup', to: "technical_mentors#create"
  post '/student/signup', to: "students#create"
  

  post '/technical_mentor/login', to: 'technical_mentors#login'
  post '/student/login', to: 'students#login'
  delete '/logout', to: 'technical_mentors#logout'
  delete '/logout', to: 'students#logout'

 
end
