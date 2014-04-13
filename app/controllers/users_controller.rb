class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, notice: "Profile created. Welcome!"
    else
      render 'new', notice: "Please check your entries and try again."
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user), notice: "Thank you for updating your profile!"
    else
      render 'edit', notice: "Please check your information and try again."
    end
  end

  def destroy
    @user = get_user
    @session = get_session
    @session.destroy
    @user.destroy
    flash[:notice] = "Profile Deleted!"
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :user_name, :email, :role, :location, :total_budget, :password, :password_confirmation)
  end
end
