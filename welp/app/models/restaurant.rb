class Restaurant < ActiveRecord::Base
  def self.delete_restaurant(id)
     Restaurant.find_by(id: id).destroy
  end
end
