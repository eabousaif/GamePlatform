require 'rails_helper'

RSpec.describe Genre, type: :model do

  it "has a valid factory - collection select includes genre's name" do
    expect(create(:genre)).to be_valid
  end
end
