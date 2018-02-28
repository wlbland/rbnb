Rails.application.routes.draw do
  devise_for :users

  resources :users, only: [:show]
  resources :cars, except: [:destroy]
  resources :bookings, except: [:destroy]

  root to: 'pages#home'
end
