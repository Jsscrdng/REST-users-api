FactoryBot.define do
  factory :user do
    full_name { Faker::Name.name }
    date_of_birth { Faker::Date.birthday(min_age: 20, max_age: 65) }
    sex { [0, 1, 2, 9].sample }
    image_url { Faker::Internet.url }
  end
end