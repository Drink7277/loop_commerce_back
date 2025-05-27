class Api::ProductsController < ApplicationController
  def index
    @products = Product.search(params[:search]).category(params[:category]).page(params[:page]).per(12)
    @products = @products.order(params[:order]) if params[:order].present?


    @categories = Product.distinct.pluck(:category)
  end
end
