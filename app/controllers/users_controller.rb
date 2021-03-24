class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    user = User.find(params[:id])
    @works = user.works
  end

  private
  def user_params
    params.require(:user).permit(:image)
  end
end
