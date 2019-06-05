Rails.application.routes.draw do
  devise_for :players
  resources :players do
    resources :video_games
  end
  root to: 'players#index'
end
