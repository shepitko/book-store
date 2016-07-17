class Address < ApplicationRecord

  belongs_to :country

  validates :first_name, :last_name, :street, :city, 
            :zip, :telephone, presence: true

end
