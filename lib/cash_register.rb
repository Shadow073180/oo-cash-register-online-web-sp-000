require 'pry'

class CashRegister

  attr_accessor :quantity, :price, :total, :title, :discount

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @item = []
    if discount == 0 || discount == nil
      no_discount = "There is no discount to apply."
      returns no_discount
    end

  end


  def add_item(item, price, quantity = 1)
    @total += (quantity * price)
      quantity.times do
        @item << item
      end
  end


  def apply_discount
    @discount = @discount.to_f / 100
    register = CashRegister.new(@discount)
    @discount = (total * @discount)
    @total = @total - @discount
    discount_message = "After the discount, the total comes to $#{@total.to_i}."
    return discount_message

  end

end
