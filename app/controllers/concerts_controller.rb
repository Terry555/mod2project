class ConcertsController < ApplicationController
  before_action :get_items_from_cart, only: [:index]

  def index
    @concerts = Concert.all
  end

  def show
    @concert = Concert.find(params[:id])
  end

  def new
    @concert = Concert.new
    render :new
  end

end
