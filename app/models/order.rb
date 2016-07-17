class Order < ApplicationRecord

  enum state: [:in_progress, :in_queue, :in_delivery, :delivered, :canceled]

  validates :sum, :state, presence: true

  belongs_to :user
	belongs_to :billing_address, class_name: 'Address'
  belongs_to :shipping_address, class_name: 'Address'
  belongs_to :coupon
  belongs_to :delivery
  belongs_to :credit_card
  has_many :order_items
end
