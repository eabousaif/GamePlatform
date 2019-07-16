FactoryBot.define do
  factory :play_session do
    duration { 200 }
    player
    video_game
  end
end
