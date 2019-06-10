# frozen_string_literal: true

class Genre < ApplicationRecord
  has_many :video_games

  def self.search(search)
    if search
      genre = Genre.find_by(name: search)
      if genre
        where(genre_id: genre)
      else
        Genre.all
      end
    else
      Genre.all
    end
  end
end
