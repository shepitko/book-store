class Delivery < ApplicationRecord
    validates :cost, :name, presence: true
    
    has_many :orders
end
