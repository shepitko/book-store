class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :short_description
      t.text :full_description
      t.decimal :price, precision: 5, scale: 2
      t.string :image

      t.timestamps
    end
  end
end
