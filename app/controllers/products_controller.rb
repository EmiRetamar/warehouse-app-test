class ProductsController < ApplicationController

  skip_before_action :verify_authenticity_token

  def index
    @products = Product.all

    respond_to do |format|
      format.json { @products } # Es necesario el http header "Accept: application/json"
    end
  end

  def show
    @product = Product.find(params[:id])
    respond_to do |format|
      format.json { @product } # Es necesario el http header "Accept: application/json"
    end
  end

  def create
    @product = Product.create(product_params)
    json_response(@product, :created)
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    json_response(@product, :ok)
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy!
    json_response({"message" => "deleted"}, :ok)
  end

  private

  def product_params
    params.permit(:code, :name, :sale_price, :stock, :stock_min, :description, :category_id)
  end

end
