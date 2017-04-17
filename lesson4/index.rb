require "./food"
require "./drink"

foods = [
  Food.new(name: "ハンバーガー", price: 500),
  Food.new(name: "唐揚げ定食", price: 700),
  Food.new(name: "海鮮丼", price: 1000),
]

drinks = [
  Drink.new(name: "オレンジジュース", price: 300, type: "アイス"),
  Drink.new(name: "コーヒー", price: 400, type: "アイス"),
  Drink.new(name: "コーヒー", price: 500, type: "ホット"),
]

total_price = 0

puts "--- お食事 ---"

order = 0
foods.each do |food|
  puts "#{order}. #{food.name}"
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
  puts "#{order}. #{drink.name}"
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

puts "--------------"
puts "合計金額は、#{total_price}円（税込）です"

__END__

指標
- [x] クラス
- [x] インスタンス
- [x] 複数のインスタンス
- [x] インスタンスメソッド
- [x] initializeメソッド
- [x] インスタンス変数
- [x] attr_accessor
- [ ] private
- [ ] クラスメソッド
- [x] 継承
- [x] super
