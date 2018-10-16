require 'pry'

class CashRegister

  attr_accessor :quantity, :price, :total, :title, :discount, :items

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end


  def add_item(item, price, quantity = 1)
    @total += (quantity * price)
      quantity.times do
        @items << item
      end
  end


  def apply_discount
    if self.discount == nil
      "There is no discount to apply"
    else
      @discount = @discount.to_f / 100
      @discount = (total * @discount)
      @total = @total - @discount
      @discount > 0
      discount_message = "After the discount, the total comes to $#{@total.to_i}."
        return discount_message
    end
  end

end
