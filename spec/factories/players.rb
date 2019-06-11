FactoryBot.define do
  factory :player do
    first_name { "Rick" }
    last_name { "Sanchez" }
    gamer_tag { "Wubbalubbadubdub" }
    email { "imagenius@rickmail.com" }
    password { "mortysucks" }
  end
end
