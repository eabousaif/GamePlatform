require 'rails_helper'

RSpec.describe Player, type: :model do

  it "Has a valid factory - A player has a first name, last name, gamer tag, email, and a password" do
    expect(create(:player)).to be_valid
  end

  it "Player is not valid without an email and a password" do
    expect(build(:player, email:nil, password: nil)).not_to be_valid
  end
end
