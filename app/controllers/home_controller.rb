class HomeController < ApplicationController
  def home
    @products = Product.order(:title)
  end
end
