class Restaurant < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
  validates :name, presence: true

  def self.get_average_rating(restaurant)
    Review.where("restaurant_id = ?", restaurant.id).average(:rating)
  end
end
