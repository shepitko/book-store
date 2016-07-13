class OrderItem < ApplicationRecord
  validates :quantity, :total, presence: true

  belongs_to :order
  belongs_to :book
end
