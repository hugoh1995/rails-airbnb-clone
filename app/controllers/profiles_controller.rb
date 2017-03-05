class ProfilesController < ApplicationController
	#human profile
  def index
    @user = current_user
  end

  def info
    current_user.update_attributes(user_params)
    redirect_to(:back)
  end

  def photo
    current_user.update_attributes(photo_params)
    redirect_to(:back)
  end

  def address
    current_user.address.update_attributes(address_params)
    redirect_to(:back)
  end

  def favorite_dog
    @dog = Dog.find(params[:dog])
    Favorite.create(dog: @dog, user: current_user)
    redirect_to(:back)
  end

  def favorite
    arr = []
    @dogs = []
    current_user.favorites.each do |dog|
      arr << dog.dog_id
    end
    @dogs = arr
  end

  private

  #human profile
  def user_params
    params.require(:user).permit(:first_name, :last_name, :phone_number, :description, :dogs)
  end

  def photo_params
    params.require(:user).permit(:photo, :photo_cache)
  end

  def address_params
    params.require(:address).permit(:city, :street, :country)
  end
end
