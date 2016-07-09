class AddDeliveryRefToOrders < ActiveRecord::Migration[5.0]
  def change
    add_reference :orders, :delivery, foreign_key: true, index: true
  end
end
