class Cart < ActiveRecord::Base
  has_many :line_items, dependent: :destroy

  def totalPrice
    sum = 0
    self.line_items.each do |item|
      sum += item.price * item.quantity
    end
    sum
  end
end
