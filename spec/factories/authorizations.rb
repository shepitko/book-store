FactoryGirl.define do
  factory :authorization do
    user nil
    provider { FFaker::Lorem.sentence }
    uid { FFaker::Lorem.sentence }
  end
end
