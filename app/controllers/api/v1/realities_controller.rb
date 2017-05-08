class Api::V1::RealitiesController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create, :update]
  def create
    reality = Reality.new(check_params)
    category = Category.find(check_params['category_id'])
    reality.user = current_user
    if reality.save
      flash[:notice] = "Reality added successfully"
      reality_to_send = {}
      reality_to_send[:id] = reality.id
      reality_to_send[:check] = reality.check
      reality_to_send[:created_at] = reality.created_at
      render json: {
       status: 201,
       message: ("successfully created a reality!"),
       reality: reality_to_send
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
    params.require(:reality).permit(:check, :category_id)
  end
end
