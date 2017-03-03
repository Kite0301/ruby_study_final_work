player_data = {
  player1: {name: "にんじゃわんこ", hp: 30, power: 5},
  player2: {name: "ひつじ仙人", hp: 40, power: 6},
}

action_data = [
  {from: :player2, to: :player1},
  {from: :player1, to: :player2},
  {from: :player1, to: :player2, message: "連続攻撃だ！"},
  {from: :player2, to: :player1},
  {from: :player1, to: :player2},
  {from: :player2, to: :player1, message: "なかなかやるな..."},
  {from: :player1, to: :player2},
  {from: :player1, to: :player2},
  {from: :player1, to: :player2, message: "まだまだいくぞ！"},
  {from: :player2, to: :player1},
  {from: :player2, to: :player1, message: "これでトドメだ！"},
]

puts "バトルスタート！"
# ここから演習

action_data.each do |action|
  from_player_name = player_data[action[:from]][:name]
  to_player_name = player_data[action[:to]][:name]
  attack_point = player_data[action[:from]][:power]

  puts "#{from_player_name}の攻撃！"

  if action[:message]
    puts "#{from_player_name}: #{action[:message]}"
  end

  puts "#{to_player_name}は#{attack_point}ポイントのダメージを受けた！"
  player_data[action[:to]][:hp] -= attack_point

  if player_data[action[:to]][:hp] <= 0
    puts "#{to_player_name}は目の前が真っ暗になった。。"
    break
  end

  puts "Enterで次のアクションに進む"
  gets
end
