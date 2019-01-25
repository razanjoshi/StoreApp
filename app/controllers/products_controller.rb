class ProductsController < ApplicationController
  def new
  	@product = Product.new
  	@categories = Category.all.map{|c| [ c.name, c.id ] }
  end

  def index
    @products = if params[:term]
      Product.where('name LIKE ?', "%#{params[:term]}%")
    else
      Product.all
    end
    @current_user = current_user
  end

  def create
    @product = Product.new product_params
    @product.category_id = product_params[:category_id]
    @product.created_by = current_user.email if current_user
    if @product.save
      subject = 'New product created'
      StoreMailer.new_product_alert(current_user, subject, @product.id ).deliver
      redirect_to @product, notice: 'Product was successfully created.'
    else
      render :new
    end
  end

  def show
  	@product = Product.find(params[:id])
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
  
    redirect_to root_path, notice: 'Product was successfully deleted.'
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price, :release_date, :category_id, :new_category_name)
  end
end
