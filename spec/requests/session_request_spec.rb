require "rails_helper"
RSpec.describe "Sessions" do
  it "Successfully signs a player in and out" do
    player = create(:player)

    sign_in player
    get root_path
    expect(response).to render_template(:index)

    sign_out player
    get root_path
    expect(response).not_to render_template(:show)
  end
end
