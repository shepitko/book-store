FactoryGirl.define do
  factory :address do
    first_name { FFaker::Name.first_name }
    last_name { FFaker::Name.last_name }
    street { FFaker::AddressUA.street_address }
    city { FFaker::AddressUA.city }
    zip { FFaker::AddressUA.zip_code }
    telephone { "+38"+FFaker::PhoneNumberDE.home_work_phone_number }
    factory :billing_address do
      type_address 0
    end
    factory :shipping_address do
      type_address 1
    end
  end
end
