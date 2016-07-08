FactoryGirl.define do
  factory :review do
    rating { rand(1..5) }
    text_review { FFaker::Lorem.sentence }
    book
    user
  end
end
