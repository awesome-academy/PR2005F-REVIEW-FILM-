class ApplicationController < ActionController::Base
  before_action :set_locale
  protect_from_forgery

  private
  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options
    {locale: I18n.locale}
  end

  def handle_unverified_request
    raise(ActionController::InvalidAuthenticityToken)
  end

  def check_log_in?
  	unless current_user.present?
  		redirect_to root_path
  		flash[:danger] = "Please login"
  	end
  end
end