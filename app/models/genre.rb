# frozen_string_literal: true

class Genre < ApplicationRecord
  has_many :video_games
end
