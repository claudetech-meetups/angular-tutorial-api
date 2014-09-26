class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      render @category
    else
      render @category.errors
    end
  end

  private
  def category_params
    params.require(:category).permit(:name)
  end
end
