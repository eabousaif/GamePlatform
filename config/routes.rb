Rails.application.routes.draw do
  devise_for :players

  resources :players do
    resources :play_sessions
  end

  resources :video_games

  resources :genres, only: [:index]

  root to: 'players#index'
end
