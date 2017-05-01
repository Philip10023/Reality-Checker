class CategoriesController < ApplicationController
  def index
    @categories = Category.all
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
end
