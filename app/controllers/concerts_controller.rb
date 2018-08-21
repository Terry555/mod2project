class ConcertsController < ApplicationController

  def index
    @concerts = Concert.all
  end

  def new
    @concert = Concert.new
    render :new
  end

  def show
    @concert = Concert.find(params[:id])
  end

end
