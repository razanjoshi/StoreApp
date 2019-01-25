class ProductsController < ApplicationController
  def new
  	@product = Product.new
  	@categories = Category.all.map{|c| [ c.name, c.id ] }
  end

  def index
  	@products = Product.all
  end

  def show
  	
  end
end
