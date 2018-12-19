class ReservationsController < ApplicationController
  before_action :logged_in_user
  
  def create
    book_copy = BookCopy.find(params[:book_copy_id])
    current_user.reserve(book_copy)
    redirect_back(fallback_location: root_path)
  end
  
  def destroy
    book_copy = Reservation.find(params[:id]).book_copy
    current_user.unreserve(book_copy)
    redirect_back(fallback_location: root_path)
  end
  
end
