class ConcertsController < ApplicationController
  before_action :authorized

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
