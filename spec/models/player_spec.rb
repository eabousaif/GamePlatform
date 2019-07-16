require 'rails_helper'

RSpec.describe Player, type: :model do

  it "Has a valid factory - A player has a first name, last name, gamer tag, email, and a password" do
    expect(create(:player)).to be_valid
  end

  describe "validations" do
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
    it { is_expected.to validate_presence_of(:gamer_tag) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:password) }
  end

  describe "associations" do
    it { is_expected.to have_many(:play_sessions) }
  end
end
