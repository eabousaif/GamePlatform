# frozen_string_literal: true

class VideoGame < ApplicationRecord
  belongs_to :genre
  has_many :play_sessions
  has_many :players, through: :play_sessions
end
