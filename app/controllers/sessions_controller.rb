class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(:email => sessions_params[:email])
    if user && user.authenticate(sessions_params[:password])
      puts "**** YES ****"
    else
      puts "***** PASSWORD WRONG ******"
    end
  end

  private

  def sessions_params
    params.require(:sessions).permit(:email,:password)
  end
end
