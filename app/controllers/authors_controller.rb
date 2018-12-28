class AuthorsController < ApplicationController
  before_action :logged_in_user, only: [:new, :create, :edit, :update, :destroy]
  before_action :admin_user, only: [:new, :create, :edit, :update, :destroy]
  
  def index
    @authors = Author.paginate(page: params[:page])
  end
  
  def show
    @author = Author.find(params[:id])
    @books = @author.books.paginate(page: params[:page])
  end
  
  def new
    @author = Author.new
  end
  
  def create
    birth_date_string_to_date
    death_date_string_to_date
    @author = Author.new(author_params)
    if @author.save
      flash[:success] = "New author created"
      redirect_to @author
    else
      render 'new'
    end
  end
  
  def edit
    @author = Author.find(params[:id])
  end
  
  def update
    birth_date_string_to_date
    death_date_string_to_date
    @author = Author.find(params[:id])
    if @author.update_attributes(author_params)
      flash[:success] = "Author updated"
      redirect_to @author
    else
      render 'edit'
    end
  end
  
  def destroy
    Author.find(params[:id]).destroy
    flash[:success] = "Author deleted"
    redirect_to authors_url
  end
  
  private
  
    def author_params
      params.require(:author).permit(:name, :birth_date, :death_date)
    end
    
    def birth_date_string_to_date
      if params[:author][:birth_date] == "Unknown"
        params[:author][:birth_date] = nil
      end
      if params[:author][:birth_date]  
        birth_date = DateTime.strptime(params[:author][:birth_date], "%Y")
        params[:author][:birth_date] = birth_date
      end
    end
    
    def death_date_string_to_date
      if params[:author][:death_date] == "Still Alive"
        params[:author][:death_date] = nil
      end
      if params[:author][:death_date]  
        death_date = DateTime.strptime(params[:author][:death_date], "%Y")
        params[:author][:death_date] = death_date
      end
    end
    
    # Confirms an admin user
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
end
