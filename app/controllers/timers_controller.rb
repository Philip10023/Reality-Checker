class TimersController < ApplicationController
  def create

    @timer = Timer.new(timer_params)
    if @timer.save
      flash[:notice] = 'Timer successfully created!'
      redirect_to timer_path
    else
      render action: 'new'
    end
  end
  def show
    @timer = Timer.find(params[:id])
  end
  def new
      @timer = Timer.new
  end
  def update
  timer = Timer.find(params[:id])
  if !timer
    new_timer = Timer.new(
      rate: timer_params[:rate]
    )
    if new_timer.valid?
      new_rate.save
      render json: {
        status: 201,
        message: "You changed your rating!",
        reviews: timer_params
      }.to_json
    else
      render json: {
        status: 500,
        error: new_timer.errors.full_messages
      }.to_json, status: :bad_request
    end
  end

  end
  private
  def timer_params
    params.require(:timer).permit(:rate, :category_id)
  end
end
