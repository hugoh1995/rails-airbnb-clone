class RequestsController < ApplicationController
  def show
  	@request = Request.find(params[:id])
  end

  def new
    @request = Request.new
    @user = current_user
    @dog = Dog.find(params[:id])
  end

  def create
    @dog = Dog.find(params[:dog_id])
    @request = Request.new(request_params)
    @request.dog = @dog

    if @request.save
      redirect_to pages_reservations_path
    else
      render 'requests/new'
    end
  end

  def destroy
    request = Request.find(params[:id])
    request.destroy
    redirect_to pages_reservations_path
  end

  private

  def request_params
    params.require(:request).permit(:start_datetime, :end_datetime, :dog_id, :user_id, :message)
  end
end
