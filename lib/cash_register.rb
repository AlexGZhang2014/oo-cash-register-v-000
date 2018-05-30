class CashRegister
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  attr_accessor :total, :discount
  
  def add_item(title, price, quantity = 1)
    @total += quantity
  end
  
end