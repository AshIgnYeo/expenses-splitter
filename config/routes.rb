Rails.application.routes.draw do
  root 'pages#home'

  devise_for :users

  resources :events, only: %i[show]
  resources :bills, only: %i[show]
end
