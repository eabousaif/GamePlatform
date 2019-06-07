require_relative "../rails_helper.rb"
describe 'Player Signup', :type => :feature do

  it 'successfully signs up Player' do
    visit '/players'
    expect(current_path).to eq('/players/sign_in')
    # player_signup method is defined in login_helper.rb
    player_session_url
    expect(current_path).to eq('/players/sign_in')
  end

  #   it "successfully destroys session hash when 'Log Out' is clicked" do
  #   visit '/players/new'
  #   # player_signup method is defined in login_helper.rb
  #   player_signup
  #   click_link("Log Out")
  #   expect(page.get_rack_session).to_not include("player_id")
  # end
end
