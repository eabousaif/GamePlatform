require "rails_helper"

RSpec.describe "Video Game System Spec", type: :system do
  before do
    driven_by(:rack_test)
  end

it "creates a new video game" do
    visit "/video_games/new"

    fill_in "Name", with: "New game"
    fill_in "Description", with: "This game is dope"
    fill_in "Rating", with: "10"
    fill_in "Release year", with: "2019"
    click_button "Create Video Game"

    expect(page).to have_content "Game Face!"
  end
end
