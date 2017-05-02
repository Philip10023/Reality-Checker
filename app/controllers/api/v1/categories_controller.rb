class Api::V1::CategoriesController < ApplicationController

  def index
    render json: Category.all
  end

  def show
    render json: { category: Category.find(params[:id]), user: current_user }
  end

  def create
    render json: Category.new(category_params)
  end

  def update
    render json: Category.new(category_params)
  end

  private

  def category_params
    params.require(:category).permit(
      :title,
      :description
    )
  end

end
