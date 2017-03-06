class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  #homepage
  def home
    @dogs = Dog.all
    @users = User.all
  end
end
