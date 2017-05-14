Rails.application.routes.draw do
  resources :events, only: [:index, :new, :create]

  root 'events#index'

end
