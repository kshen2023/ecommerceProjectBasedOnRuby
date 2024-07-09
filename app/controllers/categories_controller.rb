# app/controllers/categories_controller.rb
class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @products = @category.products
  end
end

# app/controllers/products_controller.rb
class ProductsController < ApplicationController
  def index
    @category = Category.find(params[:category_id])
    @products = @category.products
  end

  def show
    @category = Category.find(params[:category_id])
    @product = @category.products.find(params[:id])
  end
end
