class CreateDeliveries < ActiveRecord::Migration[5.0]
  def change
    create_table :deliveries do |t|
      t.string :name
      t.decimal :cost, precision: 5, scale: 2
    end
  end
end
