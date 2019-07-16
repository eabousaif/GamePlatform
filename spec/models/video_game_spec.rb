require 'rails_helper'

RSpec.describe VideoGame, type: :model do
  it "Has a valid factory - A video game has a name, description, rating, year, and a genre" do
    genre = Genre.create(name: "action-acventure", id: 2)
    expect(create(:video_game)).to be_valid
  end

  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_presence_of(:rating) }
    it { is_expected.to validate_presence_of(:release_year) }
    it { is_expected.to validate_presence_of(:genre) }
  end

  describe "associations" do
    it { is_expected.to belong_to(:genre) }
  end
end
