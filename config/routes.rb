Rails.application.routes.draw do
  devise_for :players
  resources :players do
    resources :video_games
  end
  resources :play_sessions, only: [:index, :new, :create]
  root to: 'players#index'
end
