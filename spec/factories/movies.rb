FactoryGirl.define do
  factory :movie do
    title {Faker::Name.name}
    description {Faker::Lorem.sentence}
    category
  end
end
