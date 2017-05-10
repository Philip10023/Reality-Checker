class TimersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @category = Category.find(params[:category_id])
    @timer = Timer.new
    @timer.category = @category
    @timer.user = current_user
    @timer.update_attributes(timer_params)
    if @timer.save
      flash[:notice] = 'Timer successfully created!'
      redirect_to categories_path(@category)
    else
      render action: 'new'
    end
  end
  def show
    @timer = Timer.find(params[:id])
    @category = @timer.category
    user_rate = @timer.rate
  end
  def new
      @timer = Timer.new
      @category = Category.find(params[:category_id])
  end
  def update
    timer = Timer.find(params[:id])
    timer.rate = timer_params[:rate]
    @user_rate = timer.rate

    timer.save

    redirect_to categories_path
  end

  private

  def timer_params
    params.require(:timer).permit(:rate)
  end
end
