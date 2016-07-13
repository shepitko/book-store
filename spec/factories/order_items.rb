FactoryGirl.define do
  factory :order_item do
    quantity rand(1..9)
    total "9.99"
  end
end
