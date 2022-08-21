Rails.application.routes.draw do
  root 'pages#home'

  devise_for :users

  resources :events, only: %i[show] do
    resources :bills, only: %i[new create]
  end
  resources :bills, only: %i[show]
end
