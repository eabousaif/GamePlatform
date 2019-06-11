require 'rails_helper'

RSpec.describe VideoGame, type: :model do
  it "is valid with a name, description, rating, year, and genre" do
    genre = Genre.create(name: "cool", id: 1)
    video_game = described_class.new(name: "Super Mario Bros", description: "fire game", rating: "9.2", release_year: "1994", genre_id: genre.id)
    expect(video_game).to be_valid
  end
end
