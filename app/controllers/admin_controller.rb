class AdminController < ApplicationController
  def index
    # counts total current number of orders
    @total_orders = Order.count
  end
end
