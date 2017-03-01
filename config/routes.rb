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
  devise_for :users
  root to: 'pages#home'
  # namespace :account do
  #   resources :dogs, only: [:index, :new, :create, :edit]
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
