class VenuesController < ApplicationController
  before_action :authorized

  def index
    @venues = Venue.all
  end

  def new
    @venue = Venue.new
    render :new
  end

  def show
    @venue = Venue.find(params[:id])
    @concerts = Concert.all
  end

end
