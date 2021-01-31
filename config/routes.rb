Rails.application.routes.draw do
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  resources :houses
  resources :favourites
  root to: "static#home"
end
