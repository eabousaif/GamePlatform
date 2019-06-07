# frozen_string_literal: true

class PlaySession < ApplicationRecord
  belongs_to :video_game
  belongs_to :player

end
