class BooksController < ApplicationController
  
  def show
    @book = Book.find(params[:id])
  end
  
  def new
    @book = Book.new
  end
  
  def create
    if params[:book][:publication_date]  
      publication_date = DateTime.strptime(params[:book][:publication_date], "%Y")
      params[:book][:publication_date] = publication_date
    end
    @book = Book.new(book_params)
    if @book.save
      flash[:success] = "A new book has been created!"
      redirect_to @book
    else
      render 'new'
    end
  end
  
  private
  
    def book_params
      params.require(:book).permit(:isbn, :title, :author, :description, :genre,
                                   :publication_date, :publisher)
    end
end
