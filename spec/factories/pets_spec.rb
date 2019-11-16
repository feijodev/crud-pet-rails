FactoryBot.define do
  factory :pet do
    name { Faker::Name.name }
    birthday { Faker::Date.birthday(min_age: 0, max_age: 507) }
    breed { Faker::Lorem.word }
    category { Faker::Number.between(from: 0, to: 1) }
  end
end