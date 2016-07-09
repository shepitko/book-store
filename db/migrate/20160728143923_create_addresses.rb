class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :first_name
      t.string :last_name
      t.string :street
      t.string :city
      t.integer :zip
      t.integer :telephone
      t.integer :type_address

      t.timestamps
    end
  end
end
