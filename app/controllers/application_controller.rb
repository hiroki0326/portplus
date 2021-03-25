class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
                                      keys: [:full_name, :artist_name, :down_name, :birthday, :genre, :profile, :image])
    devise_parameter_sanitizer.permit(:account_update, keys: [:full_name, :artist_name, :down_name, :birthday, :genre, :profile, :image])
  end
end
