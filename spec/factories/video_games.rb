FactoryBot.define do
  factory :video_game do
    name { "Uncharted 2" }
    description { "dope ass game" }
    rating { "10" }
    release_year { "2007" }
    genre_id { "2" }
  end
end
