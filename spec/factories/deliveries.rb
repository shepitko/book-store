FactoryGirl.define do
  factory :delivery do
    name { FFaker::CompanySE.name }
    cost "9.99"
  end
end
