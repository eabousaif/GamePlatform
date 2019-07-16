require 'rails_helper'

RSpec.describe Player, type: :model do

  it "has a valid factory - first name, last name, gamer tag, email, and a password" do
    expect(create(:player)).to be_valid
  end

  it "is not valid without a password" do
    expect(build(:player, password: nil)).not_to be_valid
  end

  it "Player DB Structure" do
    should have_db_column(:first_name).of_type(:string)
  end
end
