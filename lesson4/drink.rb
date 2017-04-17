require "./menu"

class Drink < Menu
  attr_accessor :type

  def initialize(name:, price:, type:)
    super
    self.type = type
  end

  def info
    return "#{self.name}（#{self.type}） #{self.price}円"
  end
end
