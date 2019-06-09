class ApplicationController < ActionController::Base  
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  # before_action :authenticate_user! @todo: add to 'search' action

  PERMITTED_KEYS = %i(first_name last_name bio can_help need_help interested_in)

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: PERMITTED_KEYS)
  end
end

