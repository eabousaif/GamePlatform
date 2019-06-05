class Player < ApplicationRecord
  has_many :play_sessions
  has_many :video_games, through: :play_sessions
end
