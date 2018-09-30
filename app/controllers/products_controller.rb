class ProductsController < ApplicationController
  def index
    @products = Product.all
    @products_total = Product.count
    @products_average_price = Product.average("price")
    @products_stock_summed = Product.sum("stock_quantity")
  end
end
