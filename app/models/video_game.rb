# frozen_string_literal: true

class VideoGame < ApplicationRecord
  belongs_to :genre
  has_many :play_sessions
  has_many :players, through: :play_sessions
  validates :name, :description, :rating, :release_year, :genre, presence: true
  scope :alphabetical, -> { order(:name) }
end
