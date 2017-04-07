class Restaurant < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  geocoded_by :location
  after_validation :geocode

  def self.get_average_rating(restaurant)
    rating = Review.where("restaurant_id = ?", restaurant.id).average(:rating)
    if rating
      return (rating*2).round / 2.0
    else
      return 'No Ratings Currently'
    end
  end
end
