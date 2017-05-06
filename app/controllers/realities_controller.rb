class RealitychecksController < ApplicationController
  def show
    render json: @reality = Reality.find(params[:id])
  end

end
