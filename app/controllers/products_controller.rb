class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product  = Product.new
  end

  def create
    @product = Product.new(product_categories_params)
    if @product.save
      redirect_to products_path
    else
      render 'new'
    end
  end

  private
    def product_categories_params
      params.require(:product).permit(:name_product, category_ids: [])
    end
end
