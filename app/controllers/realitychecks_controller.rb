class RealitychecksController < ApplicationController
  def show
    render json: @realitycheck = RealityCheck.find(params[:id])
  end

end
