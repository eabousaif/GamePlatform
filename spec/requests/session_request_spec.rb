require "rails_helper"
RSpec.describe "Sessions" do
  it "Upon login, the player's index page is rendered" do
    player = create(:player)

    sign_in player
    get root_path
    expect(response).to render_template(:'players/index')
  end
end
