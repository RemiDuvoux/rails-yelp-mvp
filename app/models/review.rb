class Review < ApplicationRecord
  belongs_to :restaurant

  validates :restaurant_id, :presence => true

  # A review must have a content and a rating. The rating should be a number between 0 and 5.
  validates :content, :presence => true
  validates :rating, :presence => true, numericality: { :less_than_or_equal_to => 5, :greater_than_or_equal_to => 0 }
end
