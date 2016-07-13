class Coupon < ApplicationRecord
    enum coupon_type: [:percent, :fixed_price]

    validates :name, :coupon_type, :code, :discount, :end_date, presence: true

    has_many :orders
end
