class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :require_login
  helper_method :current_user

  private

  def current_user
    @current_user ||= User.find(session['user_id']) if session['user_id']
  end

  def signed_in?
    !!current_user
  end

  def require_login
    if !signed_in?
      redirect_to signin_path, alert: 'サインインしてください'
    end
  end
end
