class CashRegister

  attr_accessor :discount, :total, :title, :items

  def initialize(discount = nil)
    @discount = discount
    @total = 0
    @items = []
  end

  def self.total
    @total
  end

  def add_item(title, price, quantity = 1)
    @title = title
    @total += (price * quantity)
    quantity.times {|i| self.items << title}
  end

  def apply_discount
    if @discount == nil
      return "There is no discount to apply."
    else
      @total *= (1 - (@discount / 100.0))
    end
    return "After the discount, the total comes to $#{@total.to_i}."
  end

  def self.items
    self.all
  end
end
