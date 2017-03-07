Rails.application.routes.draw do
  resources :requests, only: [:destroy]

  resources :dogs, only:[:index, :show] do
    resources :requests, only: [:create]
  end

  #human
  get 'profiles/edit'
  post 'profiles/info'
  post 'profiles/photo'
  post 'profiles/address'

    #favorite
  get 'profiles/favorite_dog'
  get 'profiles/wishlist'

  #dog
  get 'dog_profile', to: "dogs#edit"
  post 'dogs/dog_info'
  post 'dogs/dog_photo'

  #Request
  get 'requests/reservations', to: 'requests#reservations'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#index'
end
