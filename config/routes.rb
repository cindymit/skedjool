Rails.application.routes.draw do
  resources :availabilities
  resources :appointments
  resources :timeslots
  resources :coaches
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
