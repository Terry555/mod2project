class ApplicationController < ActionController::Base

  def cart
    session[:cart] ||= []
  end

  def add_concert_to_cart(concert_id)
    cart << concert_id
  end

  def get_items_from_cart
    @cart_items = Concert.find(cart)
  end

end
