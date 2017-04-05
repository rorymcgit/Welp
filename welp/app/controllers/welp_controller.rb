class WelpController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

end
