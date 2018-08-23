class SessionsController < ApplicationController
  skip_before_action :authorized, except: :destroy, raise: false

  def new
  end

  def create
    @fan = Fan.find_by({username: params[:username]})
    if !!@fan && @fan.authenticate(params[:password])
      flash[:notice] = "Successfully logged in #{@fan.username}!"
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
