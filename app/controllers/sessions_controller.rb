class SessionsController < ApplicationController
  before_action :authorized, only: :destroy

  def new
  end

  def create
    @fan = Fan.find_by({username: params[:username]})
    if !!@fan && @fan.authenticate(params[:password])
      session[:fan_id] = @fan.id
      redirect_to profile_path
    else
      flash[:notice] = "Invalid username or password."
      redirect_to login_path
    end
  end

  def destroy
    session.delete(:fan_id)
    redirect_to login_path
  end

end
