class BookCopiesController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy, :reservers, :borrowers]
  before_action :admin_user, only: [:create, :destroy, :reservers, :borrowers]
  
  def create
    if params[:book_copy].nil?
      render 'static_pages/home'
      return
    end
    @book_copy = current_book.book_copies.build(book_copy_params)
    if @book_copy.save
      flash[:success] = "Book copy created!"
      redirect_to current_book
    else
      render 'static_pages/home'
    end
  end
  
  def destroy
    BookCopy.find(params[:id]).destroy
    flash[:success] = "Book copy deleted"
    redirect_to request.referrer || root_url
  end
  
  def reservers
    @title = "Reservers"
    @book_copy = BookCopy.find(params[:id])
    @users = @book_copy.reservers.paginate(page: params[:page])
    render 'show_reservers'
  end
  
  def borrowers
    @title = "Borrowers"
    @book_copy = BookCopy.find(params[:id])
    @users = @book_copy.borrowers.paginate(page: params[:page])
    render 'show_borrowers'
  end
    
  
  private
  
    def current_book
      Book.find(params[:book_copy][:book_id])
    end
    
    def book_copy_params
      params.require(:book_copy).permit(:book_id)
    end
    
    # Before filters
    
    # Confirms an admin user
    def admin_user
      redirect_to(root_url) if current_user == nil || current_user.admin? == false
    end
end
