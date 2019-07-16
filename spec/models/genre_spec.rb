require 'rails_helper'

RSpec.describe Genre, type: :model do
  it "Has a valid factory - the collection select includes the genre's name" do
    expect(create(:genre)).to be_valid
  end

  it "Genre is not valid without a name" do
    genre = build(:genre)
    expect(genre).to be_valid
  end

  it "A play session belongs to a player" do
    player = create(:player)
    play_session = create(:play_session, player: player)
    expect(play_session.player).to eq(player)
  end
end
