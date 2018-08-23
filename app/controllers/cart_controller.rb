# class CartController < ApplicationController
#
#   def update
#     add_concert_to_cart(params[:concert_id])
#     flash[:notice] = "Successfully added #{params[:artist_name]} to cart"
#     @concert = Concert.find_by(params[:concert_id])
#     @concert.tickets.create(fan_id: 1)
#     # byebug
#     redirect_to concerts_path
#   end
#
#   # def destroy
#   #   empty_cart
#   # end
#
# <h4>Your Cart:</h4>
# <ol>
#   <% @cart_items.each do |item| %>
#     <li><%= item.artist_name %> | $<%= item.price %></li>
#   <% end %>
# </ol>
#
# <hr>

# <%=
# button_to "Buy ticket",
# add_to_cart_path,
# method: :patch,
# params: { concert_id: concert.id  }
# %>
#
# end
