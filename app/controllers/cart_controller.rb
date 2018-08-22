class CartController < ApplicationController

  def update
    add_concert_to_cart(params[:concert_id])
    flash[:notice] = "Successfully added #{params[:artist_name]} to cart"
    redirect_to concerts_path
  end

end
