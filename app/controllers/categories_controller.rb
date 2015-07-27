class CategoriesController < ApplicationController
  def index
    @categorys = Category.all
  end

  def new
    @category  = Category.new
  end

  def show
    # @category = Category.find(params[:id])
    @products = Product.joins(:categories).select("*").where(categories: {id: params[:id]})
  end

  def create
    @category  = Category.new(params.require(:category).permit(:name_category))
    if @category.save
      redirect_to categories_path 
    else
      render 'new'
    end
  end

  def destroy
    @category = Category.find(params[:id])
    if @category.destroy
      redirect_to categories_path
    end
  end
end
