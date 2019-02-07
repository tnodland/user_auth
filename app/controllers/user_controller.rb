class UserController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_or_initialze_by(user_params)

    if @user.save
      redirect_to user_path(@user)
    else
      redirect_to new_user_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
