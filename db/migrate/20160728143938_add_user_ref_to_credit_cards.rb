class AddUserRefToCreditCards < ActiveRecord::Migration[5.0]
  def change
    add_reference :credit_cards, :user, foreign_key: true
  end
end
