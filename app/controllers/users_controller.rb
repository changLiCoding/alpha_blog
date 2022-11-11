class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Welcome #{@user.username} to the Alpha Blog, you have successfully sign up your account! "
      redirect_to articles_path
    else
      render :new, status: :unprocessable_entity
    end
  end
  def edit
    @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "Your account information was successfully updated. "
      redirect_to user_path
    else
      redner :edit, status: :unprocessable_entity
    end
  end
  def show
    @user = User.find(params[:id])
    @articles = @user.articles
  end


  private
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end


end
