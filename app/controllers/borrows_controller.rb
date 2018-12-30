class BorrowsController < ApplicationController
  before_action :logged_in_user
  
  def create
    book_copy = BookCopy.find(params[:book_copy_id])
    current_user.borrow(book_copy)
    redirect_to book_copy.book
  end
  
  def destroy
    book_copy = Borrow.find(params[:id]).book_copy
    current_user.unborrow(book_copy)
    redirect_to book_copy.book
  end
  
end
