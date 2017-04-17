class Menu
  attr_accessor :name
  attr_accessor :price

  def initialize(name:, price:, type: '')
    self.name = name
    self.price = price
  end

  def price_with_tax
    return (self.price * 1.08).to_i
  end
end
