class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(:email => sessions_params[:email])
    if user && user.authenticate(sessions_params[:password])
      # view_context.help_methods
      log_in user
      flash[:success]="Successfully Log In"
      redirect_to user_path user
    else
      flash[:danger]="Failed Log In"
      render :new
    end
  end

  private

  def sessions_params
    params.require(:sessions).permit(:email,:password)
  end
end
