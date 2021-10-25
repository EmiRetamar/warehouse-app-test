class CategoriesController < ApplicationController

  skip_before_action :verify_authenticity_token

  def index
    @categories = Category.all

    respond_to do |format|
      format.json { @categories } # Es necesario el http header "Accept: application/json"
    end
  end

  def show
    @category = Category.find(params[:id])
    respond_to do |format|
      format.json { @category } # Es necesario el http header "Accept: application/json"
    end
  end

  def create
    @category = Category.create(category_params)
    json_response(@category, :created)
  end

  def update
    @category = Category.find(params[:id])
    @category.update(category_params)
    json_response(@category, :ok)
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy!
    json_response({"message" => "deleted"}, :ok)
  end

  private

  def category_params
    params.permit(:name, :description)
  end

end
