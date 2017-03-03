class DogsController < ApplicationController
  def index
    search_params
    address = params[:place]
    @addresses = Address.near(address, 0.5)
    ids = User.where(address_id: @addresses.to_a).ids
    @dogs = Dog.where(user_id: ids)
    # @dogs = []
    # @addresses.each do |address|
    #   @dogs << Dog.where(user_id: User.where(address_id: address.id).first.id)
    # end
    @hash = Gmaps4rails.build_markers(@addresses) do |address, marker|
      marker.lat address.latitude
      marker.lng address.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end

  def show
    @dog = Dog.find(params[:id])
    @request = Request.new
  end

  private

  def search_params
    params.permit(:place)
  end
end
