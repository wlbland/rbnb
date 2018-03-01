Rails.application.routes.draw do
  devise_for :users

  resources :users, only: [:show]

  resources :cars, except: [:destroy] do
    resources :bookings, only: [:new, :create, :show]
  end


  root to: 'pages#home'

  get "dashboard", to:'pages#dashboard'
end
