class CashRegister
  def initialize(discount = 0)
    @total = 0
    @discount = discount.to_f
    @all_items = []
  end
  
  attr_accessor :total, :discount, :
  
  def add_item(item, price, quantity = 1)
    quantity.times do
      @all_items << item
    end
    @total += price * quantity
  end
  
  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total = @total * (100.to_f - @discount)/100
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end
  
  def items
    @all_items
  end
  
  def void_last_transaction
    
  end
  
end