require "./menu"

class Drink < Menu
  attr_accessor :type

  def initialize(name:, price:, type:)
    super
    self.type = type
  end
end
