# 好きな金額を入力してください
money = 12345

puts "#{money}円は、"

count_10000 = money / 10000
if count_10000 > 0
  puts "10000円札#{count_10000}枚、"
  money -= 10000 * count_10000
end

count_5000 = money / 5000
if count_5000 > 0
  puts " 5000円札#{count_5000}枚、"
  money -= 5000 * count_5000
end

count_1000 = money / 1000
if count_1000 > 0
  puts " 1000円札#{count_1000}枚、"
  money -= 1000 * count_1000
end

count_500 = money / 500
if count_500 > 0
  puts "  500円玉#{count_500}枚、"
  money -= 500 * count_500
end

count_100 = money / 100
if count_100 > 0
  puts "  100円玉#{count_100}枚、"
  money -= 100 * count_100
end

count_50 = money / 50
if count_50 > 0
  puts "   50円玉#{count_50}枚、"
  money -= 50 * count_50
end

count_10 = money / 10
if count_10 > 0
  puts "   10円玉#{count_10}枚、"
  money -= 10 * count_10
end

count_5 = money / 5
if count_5 > 0
  puts "    5円玉#{count_5}枚、"
  money -= 5 * count_5
end

if money > 0
  puts "    1円玉#{money}枚、"
end

puts "で管理できます！"

__END__
以下コメント

指標
・計算：あり
・変数：あり
・変数の更新：あり
・文字連結：あり
・if：あり
・else：なし
・elsif：なし
・&&：なし
・||：なし
・!()：なし

その他
・そのまま国際化はできない
・くどい。お札のとこまではcurriculumで用意して、同じようにやってみて！みたいな感じだとコードを読む訓練にもなるが、1つ目のレッスンでは鬼畜か
・整数 / 整数だと切り捨てになることを教えていない
・プログラムにやらせるより人が考えた方が早い
・else, elsifが登場しない
・&&, ||もない
