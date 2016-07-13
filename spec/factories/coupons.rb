FactoryGirl.define do
  factory :coupon do
    code rand(111111..999999)
    name { FFaker::Lorem.word }
    discount "9.99"
    end_date { FFaker::IdentificationESCO.expedition_date }
    factory :coupon_percent do
      coupon_type 0
    end
    factory :coupon_fixed_price do
      coupon_type 1
    end
    
  end
end
