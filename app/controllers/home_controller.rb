class HomeController < ApplicationController
  include CurrentCart
  skip_before_action :authorize
  before_action :set_cart
  def home
    @products = Product.order(:title)
  end
end
