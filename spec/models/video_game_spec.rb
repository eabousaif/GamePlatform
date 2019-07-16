require 'rails_helper'

RSpec.describe VideoGame, type: :model do
  it "Has a valid factory - A video game has a name, description, rating, year, and a genre" do
    genre = Genre.create(name: "action-acventure", id: 2)
    expect(create(:video_game)).to be_valid
  end

  it "Video game is not valid without an id, name, and a description" do
    expect(build(:video_game, id: nil, name: nil, description: nil)).not_to be_valid
  end

  it "A video game elongs to a genre" do
    genre = create(:genre)
    video_game = create(:video_game, genre: genre)
    expect(video_game.genre).to eq(genre)
  end

end
