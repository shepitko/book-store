class CreateCreditCards < ActiveRecord::Migration[5.0]
  def change
    create_table :credit_cards do |t|
      t.integer :card_number
      t.integer :month
      t.integer :year
      t.integer :code
    end
  end
end
