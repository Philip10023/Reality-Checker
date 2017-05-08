class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def index
    if user_signed_in?
      @users = User.all
    else
      redirect_to root_path
    end
  end
end
