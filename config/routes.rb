Rails.application.routes.draw do

  resources :arcades do
    resources :arcadegames
    resources :games
  end
  resources :games

  devise_for :users

  get 'homes/index'

  root 'homes#index'

end
