# 配列のeachを使ったクイズ（惑星という言語に縛られない題材）
# よくない点：　少し配列の長さが長いのでeachが冗長

planets = ["水星", "金星", "地球", "火星", "木星", "土星", "天王星", "海王星"]
inner_star = "太陽"
correct_count = 0

puts "惑星当てゲームです。"
planets.each do |planet|
  puts ""
  puts "#{inner_star}の1つ外側の惑星は何でしょうか？入力してください"
  answer = gets.chomp
  if planet == answer
    puts "正解です！"
    correct_count += 1
  else
    puts "残念！正解は#{planet}でした！"
  end
  inner_star = planet
end

puts ""
if correct_count >= 6
  puts "#{correct_count}問正解でした！よくできました！"
elsif correct_count >= 1
  puts "#{correct_count}問正解でした。"
else
  puts "1問も正解できませんでした。。"
end
