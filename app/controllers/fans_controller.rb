class FansController < ApplicationController

  def index
    @fans = Fan.all
  end

  def new
    @fan = Fan.new
  end

  def create
    @fan = Fan.create(fan_params)
    redirect_to @fan
  end

  def show
    @fan = Fan.find(params[:id])
  end

  private

  def fan_params
    params.require(:fan).permit(:name, :drunk, :balance, :age, :favorite_artist)
  end

end
