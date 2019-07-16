# frozen_string_literal: true

class PlaySession < ApplicationRecord
  belongs_to :video_game
  belongs_to :player
  validates :duration, presence: true
  scope :tally, ->(video_game) do
    duration = where(video_game: video_game).sum(:duration)
    (duration.to_f / 60).round(2)
  end

  def duration_in_hours
    (duration.to_f / 60).round(2)
  end
end
