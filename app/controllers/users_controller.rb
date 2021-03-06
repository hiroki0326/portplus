class UsersController < ApplicationController
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :top_user, only: [:edit, :update]

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def show
    @user = User.find(params[:id])
    user = User.find(params[:id])
    @works = user.works
  end

  private
  def user_params
    params.require(:user).permit(:image, :full_name, :artist_name, :birthday, :genre, :profile)
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:full_name, :artist_name, :birthday, :genre, :profile])

    devise_parameter_sanitizer.permit(:account_update, keys: [:full_name, :artist_name, :birthday, :genre, :profile])
  end

  def top_user
    unless current_user.id
      redirect_to root_path
    end
  end
end
