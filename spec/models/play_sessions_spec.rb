require 'rails_helper'

RSpec.describe PlaySession, type: :model do
  it "Has a valid factory - The play session has a duration, player id, and a video game id" do
    expect(create(:play_session)).to be_valid
  end

  it "Play Session is not valid without a duration" do
    play_session = build(:play_session)
    expect(play_session).to be_valid
  end
end
