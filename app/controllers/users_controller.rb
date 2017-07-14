class UsersController < ApplicationController

  #asks the User model to get a list of all users from db
  def index
    @users = User.all
  end

  #displays data of 1 particular user
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(allowed_params)
    if @user.save
      flash[:notice] = 'User successfully created!'
      redirect_to @user
    else
      render :new
    end
  end

  private

  def allowed_params
    params.require(:user).permit(:username, :password) #http://localhost:3000/subreddits/2/posts/20
  end

end
