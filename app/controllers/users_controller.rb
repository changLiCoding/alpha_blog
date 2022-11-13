class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  before_action :require_user, only: [:edit, :update]
  before_action :same_user, only: [:edit, :update]

  def index
    @users = User.paginate(page: params[:page], per_page: 3)
  end

  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Welcome #{@user.username} to the Alpha Blog, you have successfully sign up your account! "
      redirect_to articles_path
    else
      render :new, status: :unprocessable_entity
    end
  end
  def edit
  end
  def update
    if @user.update(user_params)
      flash[:notice] = "Your account information was successfully updated. "
      redirect_to user_path
    else
      redner :edit, status: :unprocessable_entity
    end
  end
  def show
    @articles = @user.articles.paginate(page: params[:page], per_page: 3)
  end


  private
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
  def set_user
    @user = User.find(params[:id])
  end
  def same_user
    if current_user != @user
      flash[:alert] = "You can only edit or delete your own articles. "
      redirect_to @user
    end
  end
end
