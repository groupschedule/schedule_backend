# frozen_string_literal: true

Rails.application.routes.draw do
  
  resources :student_discussions
  resources :discussions
  resources :comments 
  resources :sessions
  resources :cohorts
  resources :students
  resources :technical_mentors
  
  post '/technical_mentor/signup', to: "technical_mentors#create"
  post '/student/signup', to: "students#create"
  


  post '/technical_mentor/signup', to: 'technical_mentors#create'
  post '/student/signup', to: 'students#create'


  post '/technical_mentor/login', to: 'technical_mentors#login'
  post '/student/login', to: 'students#login'
  delete '/logout', to: 'technical_mentors#logout'
  delete '/logout', to: 'students#logout'
end
