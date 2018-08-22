class TicketsController < ApplicationController

  # def index
  #   @tickets = Ticket.all
  # end

  def show
    @ticket = Ticket.find(params[:id])
  end

  def new
    @ticket = Ticket.new
  end

  def create
    # byebug
    @ticket = Ticket.create(fan_id: 1, concert_id: params[:concert_id])
    redirect_to @ticket
  end

  # def edit
  #   @ticket = Ticket.find(params[:id])
  # end
  #
  # def update
  #   @ticket = Ticket.find(params[:id])
  #   @ticket.update(ticket_params)
  #   redirect_to @ticket
  # end

  private

  def ticket_params
    params.require(:ticket).permit(:fan_id, :concert_id)
  end

end
