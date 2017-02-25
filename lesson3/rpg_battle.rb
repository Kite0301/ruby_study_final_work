player_data = {
  player1: {name: "にんじゃわんこ", hp: 30, power: 4},
  player2: {name: "ひつじ仙人", hp: 40, power: 5},
}

action_data = [
  {from: :player2, to: :player1},
  {from: :player1, to: :player2},
  {from: :player1, to: :player2, extra: 3},
  {from: :player2, to: :player1},
  {from: :player1, to: :player2},
  {from: :player2, to: :player1, extra: 10},
  {from: :player1, to: :player2},
  {from: :player1, to: :player2},
  {from: :player1, to: :player2, extra: 5},
  {from: :player2, to: :player1},
  {from: :player1, to: :player2, extra: 4},
]

puts "バトルスタート！"
# ここから演習

action_data.each do |action|
  from_player_name = player_data[action[:from]][:name]
  to_player_name = player_data[action[:to]][:name]
  attack_point = player_data[action[:from]][:power]

  puts "#{from_player_name}の攻撃！"

  if action[:extra]
    puts "会心の一撃！"
    attack_point += action[:extra]
  end

  puts "#{to_player_name}に#{attack_point}ポイントのダメージを与えた！"
  player_data[action[:to]][:hp] -= attack_point

  if player_data[action[:to]][:hp] <= 0
    puts "#{to_player_name}は目の前が真っ暗になった。。"
    break
  end

  puts "Enterで次のアクションに進む"
  gets
end
