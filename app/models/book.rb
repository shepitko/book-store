class Book < ApplicationRecord
  has_and_belongs_to_many :authors
  belongs_to :category
  has_many :reviews

  validates :title, :short_description, :full_description, :price, :image, presence: true

  #tmp
  scope :bestsellers, -> { where(price: '9.99').limit(6) }
end
