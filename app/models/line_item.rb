class LineItem < ApplicationRecord
  # associations:
  belongs_to :order, optional: true
  belongs_to :product, optional: true
  belongs_to :cart

  # total price of all items in cart
  def total_price
    product.price * quantity
  end
end
