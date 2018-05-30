class CashRegister
  def initialize(discount = 0)
    @total = 0
    @discount = discount.to_f
  end
  
  attr_accessor :total, :discount
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
  end
  
  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total = @total * (100.to_f - @discount)/100
      "After the discount, the total comes to $#{@total}."
    end
  end
  
end