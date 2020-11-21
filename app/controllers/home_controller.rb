class HomeController < ApplicationController
  include CurrentCart
  before_action :set_cart
  def home
    @products = Product.order(:title)
  end
end
