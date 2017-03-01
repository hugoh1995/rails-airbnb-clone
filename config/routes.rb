Rails.application.routes.draw do
  resources :dogs, only:[:index, :show]
  devise_for :users
  root to: 'pages#home'
  # namespace :account do
  #   resources :dogs, only: [:index, :new, :create, :edit]
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
