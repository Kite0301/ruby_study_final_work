# メソッド（引数なし）：あり
# メソッド（引数あり）：あり
# メソッド（引数複数）：あり
# メソッド呼び出し：あり
# booleanを返すメソッド：あり
# （メソッド（キーワード引数）：あり）
# （メソッド（デフォルト引数）：あり）
# （メソッド（ハッシュが引数）：なし）

# take_a_restとかdo_nothingの引数に違和感があるけどそれがクラスに繋がる感じがする

def attack(from: {}, to: {})
  puts "#{from[:name]}の攻撃！"
  attack_point = from[:power]
  if critical?
    puts "会心の一撃！"
    attack_point *= 2
  end
  puts "#{to[:name]}は#{attack_point}ポイントのダメージを受けた！"
  to[:hp] -= attack_point
end

def critical?
  rand(10) > 7
end

def take_a_rest(player)
  puts "#{player[:name]}は休んだ。"
  heal_point = rand(5)
  puts "#{player[:name]}は#{heal_point}ポイント回復した。"
  player[:hp] += heal_point
end

def do_nothing(player)
  puts "#{player[:name]}はぼーっとしていた。"
end



player_data = {
  player1: {name: "にんじゃわんこ", hp: 30, power: 5},
  player2: {name: "ひつじ仙人", hp: 40, power: 6},
}

offence = player_data[:player1]
defence = player_data[:player2]

puts "#{offence[:name]}のターン！"

puts "何をする？（数字を入力してください）"
puts "1: 攻撃"
puts "2: 休む"

action = gets.chomp.to_i
if action == 1
  attack(from: offence, to: defence)
elsif action == 2
  take_a_rest(offence)
else
  do_nothing(offence)
end
