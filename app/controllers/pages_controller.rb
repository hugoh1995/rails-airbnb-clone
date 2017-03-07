class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  #homepage
  def index
    @dogs = Dog.all
    @users = User.all
  end
end
