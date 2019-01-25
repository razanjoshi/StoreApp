class ProductsController < ApplicationController
  def new
  	@product = Product.new
  	@categories = Category.all.map{|c| [ c.name, c.id ] }
  end

  def index
  	@products = Product.all
  end

  def create
    @product = Product.new product_params
    @product.category_id = product_params[:category_id] 
    if @product.save
      redirect_to @product, notice: 'Product was successfully created.'
    else
      render :new
    end
  end

  def show
  	@product = Product.find(params[:id])
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price, :release_date, :category_id, :new_category_name)
  end
end
