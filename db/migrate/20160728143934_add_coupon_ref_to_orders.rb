class AddCouponRefToOrders < ActiveRecord::Migration[5.0]
  def change
    add_reference :orders, :coupon, foreign_key: true
  end
end
