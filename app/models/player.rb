class Player < ApplicationRecord
  has_many :play_sessions
  has_many :videogames, through: :play_sessions
end
