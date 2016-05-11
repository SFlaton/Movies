FactoryGirl.define do
  factory :movie do
    title {Faker::Name.name}
    description {Faker::Lorem.sentence}
    year {Faker::Number.number(4)}
    category
  end
end
