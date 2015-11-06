require 'faker'

FactoryGirl.define do
  factory :pin do |f|
    f.title { Faker::Lorem.sentences}
    f.description { Faker::Lorem.sentences}
  end

  factory :invalid_pin, parent: :pin do |f|
    f.title :nil
    f.description :nil
  end

end
