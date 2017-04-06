class Restaurant < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
  validates :name, presence: true

  def self.get_average_rating(restaurant)
    rating = Review.where("restaurant_id = ?", restaurant.id).average(:rating)
    rating = (rating*2).round / 2.0
  end
end
