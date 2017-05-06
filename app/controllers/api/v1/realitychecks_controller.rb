class Api::V1::RealitychecksController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render json: RealityCheck.all
  end

  def show
    # render json: { RealityCheck: RealityCheck.find(show_rc_params), user: current_user }
    render json: RealityCheck.find(params[:id])
  end

  realitycheck = RealityCheck.new(check_params)
  category = Category.find(check_params['category_id'])
  realitycheck.user = current_user
  if realitycheck.save
    flash[:notice] = "Review added successfully"
    review_to_send = {}
    review_to_send[:id] = realitycheck.id
    review_to_send[:check] = realitycheck.check
    review_to_send[:created_at] = review.created_at
    render json: {
     status: 201,
     message: ("successfully created a reality check!"),
     review: review_to_send
    }.to_json
  else
    flash[:notice] = "Reality check failed to save"
    render json: {
      status: 400,
      error: review.errors
    }.to_json, status: :bad_request
  end

  private

  def check_params
    params.require(:reality_check).permit(:id, :user_id, :check, :category_id)
  end

  def show_rc_params
    params.require(:reality_check).permit(:id)
  end


end
