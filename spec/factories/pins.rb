require 'faker'

FactoryGirl.define do
  factory :pin do |f|
    f.title { Faker::Lorem.sentences}
    f.description { Faker::Lorem.sentences}
  end
end
