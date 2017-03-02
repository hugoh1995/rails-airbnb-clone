Rails.application.routes.draw do
  get 'requests/show'

  resources :dogs, only:[:index, :show]
  resources :requests

  #human
  get 'pages/profile'
  post 'pages/info'
  post 'pages/photo'

  #dog
  get 'pages/dog'
  post 'pages/dog_info'
  post 'pages/dog_photo'
  #Request
  get 'pages/reservations', to: 'pages#reservations'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
end
