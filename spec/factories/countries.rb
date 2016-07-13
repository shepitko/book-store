FactoryGirl.define do
  factory :country do
    name { FFaker::AddressAU.country }
    country_code { PhoneNumberMX.country_code }
  end
end
