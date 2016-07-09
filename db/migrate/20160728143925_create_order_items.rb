class CreateOrderItems < ActiveRecord::Migration[5.0]
  def change
    create_table :order_items do |t|
      t.integer :quantity
      t.decimal :total, precision: 10, scale: 2

      t.timestamps
    end
  end
end
