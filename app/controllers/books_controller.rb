class BooksController < ApplicationController
  before_action :logged_in_user, only: [:new, :create, :edit, :update, :destroy]
  before_action :admin_user, only: [:new, :create, :edit, :update, :destroy]
  
  def index
    @books = Book.paginate(page: params[:page])
  end
  
  def show
    @book = Book.find(params[:id])
    @book_copies = @book.book_copies.paginate(page: params[:page])
  end
  
  def new
    @book = Book.new
  end
  
  def create
    publication_string_to_date
    @book = Book.new(book_params)
    if @book.save
      flash[:success] = "A new book has been created!"
      redirect_to @book
    else
      render 'new'
    end
  end
  
  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    publication_string_to_date
    @book = Book.find(params[:id])
    if @book.update_attributes(book_params)
      flash[:success] = "Book updated"
      redirect_to @book
    else
      render 'edit'
    end
  end
  
  def destroy
    Book.find(params[:id]).destroy
    flash[:success] = "Book deleted"
    redirect_to books_url
  end
  
  private
  
    def book_params
      params.require(:book).permit(:isbn, :title, :author, :description, :genre,
                                   :publication_date, :publisher, :picture)
    end
    
    def publication_string_to_date
      if params[:book][:publication_date]  
        publication_date = DateTime.strptime(params[:book][:publication_date], "%Y")
        params[:book][:publication_date] = publication_date
      end
    end
    
    # Before filters
    
    # Confirms an admin user
    def admin_user
      redirect_to(root_url) if current_user == nil || current_user.admin? == false
    end
end
