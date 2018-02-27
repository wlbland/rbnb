Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  resources :users, only: [:show]

  root to: 'pages#home'
  resources :cars
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
