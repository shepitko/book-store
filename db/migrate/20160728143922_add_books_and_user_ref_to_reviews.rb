class AddBooksAndUserRefToReviews < ActiveRecord::Migration[5.0]
  def change
    add_reference :reviews, :book, foreign_key: true, index: true
    add_reference :reviews, :user, foreign_key: true, index: true
  end
end
