# app/controllers/products_controller.rb

class ProductsController < ApplicationController
  before_action :find_category

  def index
    @products = @category.products
  end

  private

  def find_category
    @category = Category.find(params[:category_id])
  rescue ActiveRecord::RecordNotFound
    flash[:error] = "Category not found."
    redirect_to categories_path
  end
end
