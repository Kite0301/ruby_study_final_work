# 少し奇を衒った自己紹介？
# よくない点：　掛け算しかない・出力も単調

puts "今の年齢を入力してください"
age = gets.chomp.to_i
days = age * 365
hours = days * 24
minutes = hours * 60
seconds = minutes * 60
puts "あなたは#{days}日生きてきました"
puts "あなたは#{hours}時間生きてきました"
puts "あなたは#{minutes}分生きてきました"
puts "あなたは#{seconds}秒生きてきました"
