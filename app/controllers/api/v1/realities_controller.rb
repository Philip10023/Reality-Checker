class Api::V1::RealitiesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render json: Reality.all
  end

  def show
    # render json: { RealityCheck: RealityCheck.find(show_rc_params), user: current_user }
    render json: Reality.find(params[:id])
  end
  def create
    reality = Reality.new(check_params)
    category = Category.find(check_params['category_id'])
    reality.user = current_user
    if reality.save
      flash[:notice] = "Reality added successfully"
      review_to_send = {}
      review_to_send[:id] = reality.id
      review_to_send[:check] = reality.check
      review_to_send[:created_at] = category.created_at
      render json: {
       status: 201,
       message: ("successfully created a reality!"),
       review: review_to_send
      }.to_json
    else
      flash[:notice] = "Reality failed to save"
      render json: {
        status: 400,
        error: category.errors
      }.to_json, status: :bad_request
    end
  end

  private

  def check_params
    params.require(:reality).permit(:id, :user_id, :check, :category_id)
  end

  def show_rc_params
    params.require(:reality).permit(:id)
  end


end
