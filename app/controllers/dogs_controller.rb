class DogsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
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
    @addresses = Address.all
  end

  #dog_profile
  def profile
    @dog = current_user.dogs.first
  end

  def dog_info
    @dog = Dog.find(params[:id])
    @dog.update_attributes(dog_params)
    redirect_to(:back)
  end

  def dog_photo
    @dog = Dog.find(params[:id])
    @dog.update_attributes(dog_photo_params)
    redirect_to(:back)
  end

  private

  def search_params
    params.permit(:place)
  end

  #dog profile
  def dog_params
    params.require(:dog).permit(:name, :description, :birthdate, :breed_id)
  end

  def dog_photo_params
    params.require(:dog).permit(:photo, :photo_cache)
  end
end
