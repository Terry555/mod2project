class ApplicationController < ActionController::Base
  helper_method :current_fan
  helper_method :logged_in?
  helper_method :authorized

  def current_fan
    @fan = Fan.find_by({id: session[:fan_id]})
  end

  def logged_in?
    !!current_fan()
  end

  def authorized
    redirect_to login_path unless logged_in?
  end

end
