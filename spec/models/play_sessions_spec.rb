require 'rails_helper'

RSpec.describe PlaySession, type: :model do
  it "Has a valid factory - The play session has a duration, player id, and a video game id" do
    expect(create(:play_session)).to be_valid
  end

  describe "validations" do
    it { is_expected.to validate_presence_of(:duration) }
  end

  describe "associations" do
    it { is_expected.to belong_to(:player) }
  end
end
