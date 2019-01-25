class ProductsController < ApplicationController
  def new
  	@product = Product.new
  	@categories = Category.all.map{|c| [ c.name, c.id ] }
  end

  def index
  	@products = Product.all
  end

  def create
    @product = Product.new params
    @product.category_id = params[:category_id] 
    @product.save
  end

  def show
  	@product = Product.find(params[:id])
  end
  
  private

  def product_params
    params.require(:product).permit(:id, :name, :description, :category_id)
  end
end
