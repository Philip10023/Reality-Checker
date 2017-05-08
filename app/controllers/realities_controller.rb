class RealitiesController < ApplicationController
  def index
    if user_signed_in?
      @realities = Reality.all
      @categories = Category.all
    else
      redirect_to root_path
    end
  end
  def show
   @reality = Reality.find(params[:id])
  end

end
