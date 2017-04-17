require "./menu"

class Drink < Menu
  attr_accessor :size

  def initialize(name:, price:, size:)
    super(name: name, price: price)
    self.size = size
  end

  def info
    return "#{self.name} #{self.price}円 (#{self.size}ml)"
  end
end
