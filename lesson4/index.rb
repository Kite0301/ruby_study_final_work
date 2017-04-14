class Food
  attr_accessor :name
  attr_accessor :price

  def initialize(name:, price:)
    self.name = name
    self.price = price
  end

  def price_with_tax
    return (self.price * 1.08).to_i
  end
end

foods = [
  Food.new(name: "ハンバーガー", price: 500),
  Food.new(name: "唐揚げ定食", price: 700),
  Food.new(name: "海鮮丼", price: 1000),
]

puts "--- お食事 ---"

order = 1
foods.each do |food|
  puts "#{order}. #{food.name}"
  order += 1
end

puts "--------------"
puts "メニューを選んでください"

food_number = gets.chomp.to_i
food = foods[food_number - 1]

puts "金額: #{food.price}円"
puts "税込価格: #{food.price_with_tax}円"
