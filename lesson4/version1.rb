# Foodクラスのみの状態

# ---------- food.rb ---------- #

class Food
  attr_accessor :name
  attr_accessor :price
  attr_accessor :calorie

  def initialize(name:, price:, calorie:)
    self.name = name
    self.price = price
    self.calorie = calorie
  end

  def info
    return "#{self.name} #{self.price}円 (#{self.calorie}kcal)"
  end

  def price_with_tax
    return (self.price * 1.08).to_i
  end
end

# ---------- index.rb ---------- #

# require "./food"

food1 = Food.new(name: "ハンバーガー", price: 500, calorie: 500)
food2 = Food.new(name: "唐揚げ定食", price: 700, calorie: 600)
food3 = Food.new(name: "海鮮丼", price: 1000, calorie: 450)

foods = [
  food1,
  food2,
  food3
]

total_price = 0

puts "--- お食事 ---"

order = 0
foods.each do |food|
  puts "#{order}. #{food.info}"
  order += 1
end

puts "--------------"
puts "メニューの番号を選択してください"

food_order = gets.chomp.to_i
food = foods[food_order]

if food
  puts "お食事の注文を受け付けました"
  total_price += food.price_with_tax
else
  puts "正しい番号が入力されませんでした"
end

puts "合計金額は、#{total_price}円（税込）です"
