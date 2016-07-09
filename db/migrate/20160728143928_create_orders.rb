class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :state
      t.decimal :sum, precision: 10, scale: 2

      t.timestamps
    end
  end
end
