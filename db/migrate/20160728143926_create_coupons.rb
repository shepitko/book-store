class CreateCoupons < ActiveRecord::Migration[5.0]
  def change
    create_table :coupons do |t|
      t.integer :code
      t.string :name
      t.integer :coupon_type
      t.decimal :discount, precision: 5, scale: 2
      t.date :end_date
    end
  end
end
