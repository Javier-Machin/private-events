class SessionsController < ApplicationController
  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user 
      log_in(@user)
      
      redirect_to @user
    else
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end
end
