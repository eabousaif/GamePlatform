Rails.application.routes.draw do
  devise_for :players, path: 'devise'

  resources :players do
    resources :play_sessions, only: [:index, :new, :create]
  end

  resources :video_games do
    collection do
      get :players_list
    end
  end

  resources :genres, only: [:index]

  root to: 'players#index'
end
