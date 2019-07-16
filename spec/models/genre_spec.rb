require 'rails_helper'

RSpec.describe Genre, type: :model do
  it "Has a valid factory - the collection select includes the genre's name" do
    expect(create(:genre)).to be_valid
  end

  it "Genre is not valid without a name" do
    genre = build(:genre)
    expect(genre).to be_valid
  end
end
