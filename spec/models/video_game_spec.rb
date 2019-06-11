require 'rails_helper'

RSpec.describe VideoGame, type: :model dogit
  it "has a valid factory - name, description, rating, year, and genre" do
    genre = Genre.create(name: "action-acventure", id: 2)
    expect(create(:video_game)).to be_valid
  end

  it "is not valid without a name" do
    expect(build(:video_game, name: nil)).not_to be_valid
  end
end
