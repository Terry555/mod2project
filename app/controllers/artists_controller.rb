class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
    render :new
  end

  def show
    @artist = Artist.find(params[:id])
    @concerts = Concert.all
  end

end
