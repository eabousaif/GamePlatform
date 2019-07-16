require 'rails_helper'

RSpec.describe Player, type: :model do

  it "Has a valid factory - A player has a first name, last name, gamer tag, email, and a password" do
    expect(create(:player)).to be_valid
  end

  it "Player is not valid without a first name" do
    expect(build(:player, first_name:nil)).not_to be_valid
  end

  it "Player is not valid without a last name" do
    expect(build(:player, last_name:nil)).not_to be_valid
  end

  it "Player is not valid without a gamer tag" do
    expect(build(:player, gamer_tag:nil)).not_to be_valid
  end

  it "Player is not valid without an email" do
    expect(build(:player, email:nil)).not_to be_valid
  end

  it "Player is not valid without a password" do
    expect(build(:player, password:nil)).not_to be_valid
  end
end
