class DogsController < ApplicationController
  def index
    @dogs = Dog.all
    @addresses = Address.all
    @hash = Gmaps4rails.build_markers(@addresses) do |address, marker|
      marker.lat address.latitude
      marker.lng address.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end

  def show
    @dog = Dog.find(params[:id])
  end
end
