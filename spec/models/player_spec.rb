require 'rails_helper'

RSpec.describe Player, :type => :model do
  let(:player) {
    Player.create!(
      first_name: "John",
      last_name: "Doe",
      gamer_tag: "gamer123",
      email: "abd@gmail.com",
      password:"987654321"
    )
  }

  it "is valid with a first name, last name, gamer tag, email, password" do
    expect(player).to be_valid
  end

  it "is not valid without a password" do
    expect(Player.new(first_name: "Name")).not_to be_valid
  end
end
