# frozen_string_literal: true

Rails.application.routes.draw do
  resources :announcements
  resources :student_discussions
  resources :discussions
  resources :announcements, only: [:index] # :create]
  resources :comments, only: %i[index create]
  resources :sessions, only: %i[index create show update destroy]
  resources :cohorts, only: %i[index create show update destroy]
  resources :students, only: %i[index create show]
  resources :technical_mentors, only: %i[index create]

  post '/technical_mentor/signup', to: 'technical_mentors#create'
  post '/student/signup', to: 'students#create'

  post '/auth/login', to: 'technical_mentors#login'
  post '/auth/login', to: 'students#login'
  delete '/logout', to: 'technical_mentors#logout'
  delete '/logout', to: 'students#logout'
end
