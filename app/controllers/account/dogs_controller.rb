class Account::DogsController < ApplicationController
  def index
    @dogs = current_user.dogs
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
    @dog = Dog.find(params[:id])
  end
end
