class ProductsController < ApplicationController
  def index
    @products = Product.includes(:images).order('created_at DESC')
  end

  def confirm
  end
  
  def new
    @product = Product.new
    @product.images.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to new_product_path
    else
      render :new
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price, images_attributes: [:image] )
  end

end
