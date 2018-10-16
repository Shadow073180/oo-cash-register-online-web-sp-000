require 'pry'

class CashRegister

  attr_accessor :quantity, :price, :total, :title, :discount

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @item = []

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
    if @discount > 0
      discount_message = "After the discount, the total comes to $#{@total.to_i}."
      return discount_message
    elsif discount == nil
      discount_message = "There was no discount to apply."
      return discount_message
    end
  end

end
