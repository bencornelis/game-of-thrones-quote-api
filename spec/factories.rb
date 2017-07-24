FactoryGirl.define do
  factory :quote do
    sequence(:content) { |n| Faker::ChuckNorris.fact }
    character
  end

  factory :character do
    sequence(:name) { |n| Faker::GameOfThrones.character }
  end
end
