require "./menu"

class Food < Menu
  def info
    return "#{self.name} #{self.price}円"
  end
end
