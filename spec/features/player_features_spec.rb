require_relative "../rails_helper.rb"
describe 'Player Signup', type: :feature do

  it 'Successfully signs up Player for Game Face!' do
    visit '/players'
    expect(current_path).to eq('/devise/sign_in')
    player_session_url
    expect(current_path).to eq('/devise/sign_in')
  end
end
