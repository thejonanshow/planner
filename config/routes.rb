Rails.application.routes.draw do
  resources :workouts
  resources :events, only: [:index, :new, :create]

  root 'events#index'

end
