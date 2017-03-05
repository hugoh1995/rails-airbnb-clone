Rails.application.routes.draw do
  resources :requests

  resources :dogs, only:[:index, :show] do
    resources :requests, only: [:create]
  end

  #human
  get 'profiles/index'
  post 'profiles/info'
  post 'profiles/photo'
  post 'profiles/address'

    #favorite
  get 'profiles/favorite_dog'
  get 'profiles/favorite'

  #dog
  get 'pages/dog'
  post 'pages/dog_info'
  post 'pages/dog_photo'

    #itineraries
  get 'pages/itineraries'

  #Request
  get 'pages/reservations', to: 'pages#reservations'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
end
