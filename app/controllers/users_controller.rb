class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy, :reserving, :borrowing]
  before_action :correct_user,   only: [:edit, :update]
  before_action :admin_user, only: [:destroy, :reserving, :borrowing]
  
  def index
    search = search_params[:search]
    if search      
      @users = User.where(name: search).paginate(page: params[:page])
    else
      @users = User.paginate(page: params[:page])
    end
  end
  
  def show
    @user = User.find(params[:id])
    @book_copies_reserving = @user.reserving.paginate(page: params[:page])
    @book_copies_borrowing = @user.borrowing.paginate(page: params[:page])
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end
  
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end
  
  def reserving
    @title = "Reserving"
    @user = User.find(params[:id])
    @book_copies = @user.reserving.paginate(page: params[:page])
    render 'show_reserving'
  end
  
  def borrowing
    @title = "Borrowing"
    @user = User.find(params[:id])
    @book_copies = @user.borrowing.paginate(page: params[:page])
    render 'show_borrowing'
  end
  
  private
  
  def search_params
    params.permit(:search)
  end
  
  def user_params
    params.require(:user).permit(:name, :email, :library_card_number,
                                 :password,
                                 :password_confirmation)
  end
  
  # Before filters
  
  # Confirms the correct user.
  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user?(@user)
  end
  
  # Confirms an admin user.
  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end
end
