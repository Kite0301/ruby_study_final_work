# 継承前

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

# ---------- drink.rb ---------- #

class Food
  attr_accessor :name
  attr_accessor :price
  attr_accessor :size

  def initialize(name:, price:, size:)
    self.name = name
    self.price = price
    self.size = size
  end

  def info
    return "#{self.name} #{self.price}円 (#{self.size}ml)"
  end

  def price_with_tax
    return (self.price * 1.08).to_i
  end
end

# ---------- index.rb ---------- #

# require "./food"

foods = [
  Food.new(name: "ハンバーガー", price: 500, calorie: 500),
  Food.new(name: "唐揚げ定食", price: 700, calorie: 600),
  Food.new(name: "海鮮丼", price: 1000, calorie: 450)
]

drinks = [
  Drink.new(name: "オレンジジュース", price: 300, size: 300),
  Drink.new(name: "コーヒー", price: 400, size: 250),
  Drink.new(name: "ミネラルウォーター", price: 200, size: 500)
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

puts "--- お飲み物 ---"

order = 0
drinks.each do |drink|
  puts "#{order}. #{drink.info}"
  order += 1
end

puts "--------------"
puts "メニューの番号を選択してください"

drink_order = gets.chomp.to_i
drink = drinks[drink_order]

if drink
  puts "お飲み物の注文を受け付けました"
  total_price += drink.price_with_tax
else
  puts "正しい番号が入力されませんでした"
end


puts "合計金額は、#{total_price}円（税込）です"
