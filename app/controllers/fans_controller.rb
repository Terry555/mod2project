class FansController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :show], raise: false

  def show
    @fan = Fan.find(params[:id])
  end

  def profile
    render :show
  end

  def new
    @fan = Fan.new
  end

  def create
    @fan = Fan.create(fan_params)
    if @fan.valid?
      redirect_to @fan
    else
      render :new
    end
  end

  def edit
    @fan = Fan.find(params[:id])
  end

  def update
    @fan = Fan.find(params[:id])
    if @fan.update(fan_params)
      flash[:notice] = "You successfully updated your profile!"
      redirect_to @fan
    else
      render :edit
    end
  end

  def destroy
    @fan = Fan.find(params[:id])
    @fan.destroy
    @fan.tickets.destroy_all
    flash[:notice] = "Successfully deleted account for #{@fan.name}."
    redirect_to concerts_path
  end

  private

  def fan_params
    params.require(:fan).permit(:name, :drunk, :balance, :age, :favorite_artist, :username, :password)
  end

end
