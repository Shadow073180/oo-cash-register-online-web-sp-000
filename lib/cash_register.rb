require 'pry'

class CashRegister

  attr_accessor :quantity, :price, :total, :title, :discount

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    item = []

  end


  def add_item(title, price, quantity = 1)
    @total = @total + price
    @quantity

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
