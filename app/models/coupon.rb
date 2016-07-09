class Coupon < ApplicationRecord
    enum coupon_type: [:percent, :fixed_price]
end
