class ConcertsController < ApplicationController

  def index
    @concerts = Concert.all
  end

  def show
    @concert = Concert.find(params[:id])
    @ticket = Ticket.new
  end

  def new
    @concert = Concert.new
    render :new
  end

end
