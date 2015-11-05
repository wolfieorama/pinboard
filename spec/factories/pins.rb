require 'faker'

FactoryGirl.define do
  factory :pin do |f|
    f.image { Faker::Lorem.characters}
    f.title { Faker::Lorem.sentences}
    f.description { Faker::Lorem.sentences}
  end
end
