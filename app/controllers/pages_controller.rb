class PagesController < ApplicationController
  def home
    @dogs = Dog.all
    @users = User.all
  end
end
