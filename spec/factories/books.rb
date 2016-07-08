FactoryGirl.define do
  factory :book do
    title { FFaker::Movie.title }
    short_description { FFaker::CheesyLingo.title }
    full_description { FFaker::Lorem.sentence }
    price "9.99"
    image { FFaker::Avatar.image(FFaker::Lorem.words.join, '300x300', 'jpg') }
    category
  end
end
