class RestaurantsController < WelpController
  def new

  end

  def create
    Restaurant.create(name: params[:name], location: params[:location])
    redirect_to ('/welp/index')
  end
end
