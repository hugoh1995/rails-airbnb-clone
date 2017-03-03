class PagesController < ApplicationController
  #homepage
  def home
    @dogs = Dog.all
    @users = User.all
  end

  #human profile
  def profile
    @user = current_user
  end

  #Reservation
  def reservations
    @request =  current_user.requests
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

  #dog_profile
  def dog
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

  #dog profile
  def dog_params
    params.require(:dog).permit(:name, :description, :birthdate, :breed_id)
  end

  def dog_photo_params
    params.require(:dog).permit(:photo, :photo_cache)
  end
end
