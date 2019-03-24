class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(name: params[:user][:name], email: params[:user][:email],
                     password: params[:user][:password], password_confirmation: params[:user][:password_confirmation])

    if @user.save
      # binding.pry
      redirect_to user_path(@user.id)
      # redirect_to @user
    else

      render "new"
    end
  end

  def show
    @user = User.find params[:id]
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                      :password_confirmation)
  end
end
