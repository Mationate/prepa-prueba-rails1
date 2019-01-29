class ProductsController < ApplicationController
  before_action :set_product, only: %i[show destroy edit update]
  

  def index
    @products = Product.order(:id)
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to product_path(@product.id), notice: 'Se guardó el producto'
    else
      redirect_to product_path(@product.id), alert: 'No se guardó el producto'
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    @product.destroy
    redirect_to root_path, notice: 'Se eliminó el product con éxito'
  end

  private
  def set_product
    @product = Product.find(params[:id])
  end
  
  def product_params
    params.require(:product).permit(:name, :price, :description, :image)
  end
end
