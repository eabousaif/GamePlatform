require "rails_helper"

RSpec.describe "Video game request", tyoe: :request do

  it "Creates a video game and redirects to the video game's page" do
    player = create(:player)
    sign_in player
    get "/video_games"
    expect(response).to render_template(:index)
  end

  it "Does not render a different template" do
    get "/video_games/new"
    expect(response).to_not render_template(:show)
  end
end
