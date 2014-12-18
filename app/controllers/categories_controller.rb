

class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    @category = Category.new
  end
  
  def create
    category = Category.new(category_params)
    category.save
    redirect_to :back
  end
  
  private
  
  def category_params
    params[:category].permit(:name)
  end
end

