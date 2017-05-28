Rails.application.routes.draw do
  # resources :events, only: [:index, :new, :create]
  resources :events

  root 'events#index'

end
