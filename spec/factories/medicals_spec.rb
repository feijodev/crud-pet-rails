FactoryBot.define do
  factory :medical do
    symptom { Faker::Lorem.paragraphs }
    treatment { Faker::Lorem.paragraphs }
    
    trait :with_pet do
      pet { build :pet }
    end
  end
end