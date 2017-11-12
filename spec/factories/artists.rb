FactoryGirl.define do
  factory :artist do
    name  { Faker::Name.name }
    genre   { Faker::Name.genre }
    image_url   { Faker::Lorem.image_url }
  end
end
