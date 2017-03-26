Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :cards
    end
  end

  resources :arcades do
    resources :arcadegames
    resources :games
  end
  resources :games

  devise_for :users

  get 'homes/index'

  root 'homes#index'

end
