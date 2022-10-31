Rails.application.routes.draw do
  resources :student_discussions
  resources :discussions
  resources :announcements, only: [:index ] #:create]
  resources :comments, only: [:index, :create]
  resources :sessions, only: [:index, :create, :show, :update, :destroy]
  resources :cohorts, only: [:index, :create, :show, :update, :destroy]
  resources :students, only: [:index, :create]
  resources :technical_mentors, only: [:index, :create]

  post '/login', to: 'technical_mentors#create'
  post '/login', to: 'students#create'
  post '/logout', to: 'technical_mentors#logout'
  post '/logout', to: 'students#logout'

 
end
