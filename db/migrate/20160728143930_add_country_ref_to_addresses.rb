class AddCountryRefToAddresses < ActiveRecord::Migration[5.0]
  def change
    add_reference :addresses, :country, foreign_key: true
  end
end
