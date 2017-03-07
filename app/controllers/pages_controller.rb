class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  #homepage
  def home
    @dogs = Dog.all
    @users = User.all
  end

  #Reservation
  def reservations
    @request =  current_user.requests
    @dog_request = Request.where(dog_id: current_user.dogs.first.id)
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

  #itineraries
  def itineraries
    @dog = current_user.dogs.first
    @user = current_user
  end

  private

  #dog profile
  def dog_params
    params.require(:dog).permit(:name, :description, :birthdate, :breed_id)
  end

  def dog_photo_params
    params.require(:dog).permit(:photo, :photo_cache)
  end
end
