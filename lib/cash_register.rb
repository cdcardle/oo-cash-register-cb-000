class CashRegister

  attr_accessor :discount, :total, :title

  def initialize(discount = nil)
    @discount = discount
    @total = 0
  end

  def self.total
    @total
  end

  def add_item(title, price, quantity = 1)
    @title = title
    @total += (price * quantity)
  end

  def apply_discount
    if @discount == nil
      @total *= (1 - @discount / 100.0)
    else
      puts "There is no discount to apply."
    end
    return "After the discount, the total comes to $#{@total.to_i}."
  end

  def self.items

  end
end
