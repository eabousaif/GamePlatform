# frozen_string_literal: true

class PlaySession < ApplicationRecord
  belongs_to :video_game
  belongs_to :player
  scope :tally, ->(video_game) do
    duration = where(video_game: video_game).sum(:duration)
    (duration / 60).to_f.round(2)
  end
end
