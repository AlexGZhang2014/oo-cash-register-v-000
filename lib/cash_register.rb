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
      puts "There is no discount to apply."
    else
      @total -= @discount
      puts "After the discount, the total comes to $#{@total}."
  end
  
end