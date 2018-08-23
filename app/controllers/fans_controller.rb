class FansController < ApplicationController
  before_action :authorized, except: [:new, :create]

  def show
    @fan = Fan.find(params[:id])
    @balance = @fan.balance - current_balance
  end

  def profile
    @fan = Fan.find(session[:fan_id])
    @balance = @fan.balance - current_balance
    render :show
  end

  def new
    @fan = Fan.new
  end

  def create
    @fan = Fan.create(fan_params)
    if @fan.valid?
      flash[:notice] = "Signup successful! Welcome, #{@fan.username}."
      session[:fan_id] = @fan.id
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
    redirect_to new_fan_path
  end

  private

  def fan_params
    params.require(:fan).permit(:name, :drunk, :balance, :age, :favorite_artist, :username, :password)
  end

  def current_balance
    money_spent = []
    if @fan.tickets == []
      0
    else
      @fan.tickets.each{|ticket| money_spent << ticket.concert_price}
      money_spent.inject(:+)
    end
  end

end
