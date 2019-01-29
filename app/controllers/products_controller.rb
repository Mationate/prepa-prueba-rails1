class ProductsController < ApplicationController
  before_action :set_product, only: %i[show destroy edit update set_favourite]
  

  def index
    @products = Product.order(:id)
    @product = Product.new
  end

  def create
    product = Product.new(product_params)
    product.image = 'https://loremflickr.com/300/200' if product.image = ""

    if product.save
      redirect_to product_path(product.id), notice: 'Se guardó el producto'
    else
      redirect_to product_path(product.id), alert: 'No se guardó el producto'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to root_path, notice: 'Se actualizó con éxito'
    else
      redirect_to root_path, alert: 'No se actualizo'
    end
  end

  def destroy
    @product.destroy
    redirect_to root_path, notice: 'Se eliminó el product con éxito'
  end

  def set_favourite
    #@product.favourite = true
    #@product.save
    @product.update_attribute(:favourite, !@product.favourite)
    redirect_to product_path(@product)
  end

  def favourites
    @products = Product.all
    @favourites = @products.where('favourite = ?', true)

  end

  private
  def set_product
    @product = Product.find(params[:id])
  end
  
  def product_params
    params.require(:product).permit(:name, :price, :description, :image)
  end
end
