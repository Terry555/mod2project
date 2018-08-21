class FansController < ApplicationController

  def index
    @fans = Fan.all
  end

  def new
    @fan = Fan.new
    render :new
  end

end
