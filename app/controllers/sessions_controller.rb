class SessionsController < ApplicationController
  def new
  end
  def create
    session[:user_id] = User.authenticate(params[:username], params[:password]).id
    flash[:notice] = "Welcome back!"
    redirect_to :action => session[:intended_action],
                :controller => session[:intended_controller]
  end
  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Come back soon!"
  end
end
