Rails.application.routes.draw do
  devise_for :models
  devise_for :users
  get 'home/index'

  resources :weapons
  resources :categories
  get 'weapons/index'
  root 'weapons#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
