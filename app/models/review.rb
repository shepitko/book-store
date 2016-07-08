class Review < ApplicationRecord
  validates :rating, :text_review, presence: true
  validates_inclusion_of :rating, :in => 1..5
  belongs_to :book
  belongs_to :user
end
