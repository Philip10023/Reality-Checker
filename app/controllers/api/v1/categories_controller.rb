class Api::V1::CategoriesController < ApplicationController
skip_before_action :verify_authenticity_token, only: [:show]

  def show
    @realities = []
    Category.find(params[:id]).realities.each do |reality|
      reality_to_send = {}
      reality_to_send[:id] = reality.id
      reality_to_send[:check] = reality.check
      reality_to_send[:created_at] = reality.created_at
      @realities << reality_to_send
    end

    user = if user_signed_in?
      current_user.id
    else
      user_signed_in?
    end
    render json: { realities: @realities, user: user }
  end
end
