require "rails_helper"

RSpec.describe "Video Game System Spec", type: :system do
  before do
    driven_by(:rack_test)
  end

it "Creates a new video game with the correct genre" do
  genre = create(:genre)
    visit "/video_games/new"

    fill_in "Name", with: "New game"
    fill_in "Description", with: "This game is dope"
    fill_in "Rating", with: "10"
    fill_in "Release year", with: "2019"
    select "Adventure", from: "Genre"
    click_button "Create Video Game"

    expect(page).to have_content(VideoGame.last.description)
    expect(VideoGame.last.name).to eq "New game"
  end
end
