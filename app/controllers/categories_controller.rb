class CategoriesController < ApplicationController
  def index
    if Category.search(params[:query])
      @categories = Category.search(params[:query])
    else
      @categories = Category.all
    end
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:notice] = 'Category successfully saved!'
      redirect_to @category
    else
      render action: 'new'
    end
  end

  def show
    @category = Category.find(params[:id])
  end
  private

  def category_params
    params.require(:category).permit(:title, :description)
  end
end
