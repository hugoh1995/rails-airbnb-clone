Rails.application.routes.draw do
  resources :dogs, only:[:index, :show]
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
end