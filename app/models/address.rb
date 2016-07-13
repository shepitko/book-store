class Address < ApplicationRecord
  enum address_type: [:billing, :shipping]

  belongs_to :country
  belongs_to :user
  has_many :orders

  validates :first_name, :last_name, :street, :city, 
            :zip, :telephone, :type_address, presence: true

end
