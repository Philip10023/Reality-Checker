class Api::V1::FavoritesController < ApplicationController
skip_before_action :verify_authenticity_token, only: :create
  def create
    @favorite = Favorite.create(fav_params)
    render json: @favorite
  end
  private
  def fav_params
    params.require(:favorite).permit(:favreality, :user_id, :reality_id, :category_id)
  end
end
