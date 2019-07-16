require_relative "../rails_helper.rb"
describe 'Player Signup', type: :feature do

  it 'successfully signs up Player' do
    visit '/players'
    expect(current_path).to eq('/devise/sign_in')
    player_session_url
    expect(current_path).to eq('/devise/sign_in')
  end
end
