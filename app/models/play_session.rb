# frozen_string_literal: true

class PlaySession < ApplicationRecord
  belongs_to :video_game
  belongs_to :player

  def duration_in_hours
    (duration / 60).to_f
  end
end
