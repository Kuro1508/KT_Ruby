class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by name: params[:session][:name].downcase
    if user && user.authenticate(params[:session][:password])
      # flash[:alert] = "Login success"
      log_in user
      redirect_to svien_path
    else
      flash.alert = "Invalid email/password combination"
      render :new
    end
  end

  def destroy
    log_out
    flash.alert = "You are logged out"
    redirect_to login_path
  end
end
