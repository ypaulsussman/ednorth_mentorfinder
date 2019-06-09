class ApplicationController < ActionController::Base  
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!, only: [:search_colleagues]

  PERMITTED_UPDATE_KEYS = %i(first_name last_name bio can_help need_help interested_in)
  PERMITTED_CREATE_KEYS = %i(first_name last_name)

  def search_colleagues
    @q = User.ransack(params[:q])
    @people = @q.result(distinct: true)
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: PERMITTED_UPDATE_KEYS)
    devise_parameter_sanitizer.permit(:sign_up, keys: PERMITTED_CREATE_KEYS)
  end
end

