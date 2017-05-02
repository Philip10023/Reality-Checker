class Api::V1::RealityChecksController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    render json: RealityCheck.all
  end

  def create
    reality_check = RealityCheck.create!(check_params)
  end

  private

  def check_params
    params.require(:reality_check).permit(:check, :category_id)
  end

end
