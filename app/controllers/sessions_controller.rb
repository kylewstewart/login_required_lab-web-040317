class SessionsController < ApplicationController

  def create
    if params[:name] == nil || params[:name] == ''
      redirect_to new_session_path
    else
      session[:name] = params[:name]
      redirect_to secret_path(1)
    end
  end

  def destroy
    reset_session
  end

end
