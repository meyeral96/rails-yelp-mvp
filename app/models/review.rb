class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, inclusion: { in: 1..5,
    message: "%{value} is not a valid rating" }
    # A review must have a content.
    # A review must have a rating.
    # A review’s rating must be a number between 0 and 5.
    # A review’s rating must be an integer. For example, a review with a rating of 2.5 should be invalid!
end
