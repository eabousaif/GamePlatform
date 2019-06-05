Rails.application.routes.draw do
  devise_for :players
  resources :players
  root to: 'players#index'
end
