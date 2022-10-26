Rails.application.routes.draw do
  resources :announcements, only: [:index ] #:create]
  resources :comments, only: [:index, :create]
  resources :sessions
  resources :cohorts
  resources :students, only: [:index, :create]
  resources :technical_mentors, only: [:index, :create]
 
end
