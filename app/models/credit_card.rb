class CreditCard < ApplicationRecord
  validates_inclusion_of :month, in: 1..12
  validates_inclusion_of :year, in: 1990..2090
  validates_length_of :card_number, is: 16
  validates_length_of :cvv, is: 3
  validates :month, :year, :cvv, :card_number, presence: true

  belongs_to :user
  has_many :orders
end
