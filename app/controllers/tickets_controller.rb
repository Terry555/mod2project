class TicketsController < ApplicationController

  def show
    @ticket = Ticket.find(params[:id])
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.create(fan_id: 1, concert_id: params[:concert_id])
    redirect_to @ticket
  end

  def destroy
    @ticket = Ticket.find(params[:id])
    @ticket.destroy
    flash[:notice] = "Your ticket has been deleted"
    @fan = Fan.all.find_by(id: @ticket.fan_id)
    redirect_to fan_path(@fan)
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
