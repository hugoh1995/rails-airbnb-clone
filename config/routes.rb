Rails.application.routes.draw do
  resources :dogs, only:[:index, :show]
  #human
  get 'pages/profile'
  post 'pages/info'
  post 'pages/photo'
  #dog
  get 'pages/dog'
  post 'pages/dog_info'
  post 'pages/dog_photo'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
end
