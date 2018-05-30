class CashRegister
  def initialize(discount = 0)
    @total = discount
    
  end
  
  attr_accessor :total
  
end