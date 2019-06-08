Rails.application.routes.draw do
  devise_for :players

  resources :players do
    resources :play_sessions
  end

  resources :video_games

  root to: 'players#index'
end
