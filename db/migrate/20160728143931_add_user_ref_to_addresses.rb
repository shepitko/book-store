class AddUserRefToAddresses < ActiveRecord::Migration[5.0]
  def change
    add_reference :addresses, :user, foreign_key: true, index: true
  end
end
