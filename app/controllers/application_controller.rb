class ApplicationController < ActionController::Base
  helper_method :current_fan
  helper_method :logged_in
  helper_method :authorized

  def current_fan
    @fan = Fan.find_by({id: session[:fan_id]})
  end

  def logged_in?
    !!@fan
  end

  def authorized
    redirect_to login_path unless logged_in?
  end

  # def cart
  #   session[:cart] ||= []
  # end
  #
  # def add_concert_to_cart(concert_id)
  #   cart << concert_id
  # end
  #
  # def get_items_from_cart
  #   @cart_items = Concert.find(cart)
  # end

  # def empty_cart
  #   cart.clear
  # end

end
