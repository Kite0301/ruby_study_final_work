class Character
  attr_accessor :name
  attr_accessor :hp

  def initialize(name: "名無しさん", hp: 1, power: 1)
    @name = name
    @hp = hp
    @power = power
    hello
  end

  def act_to(player)
    puts "行動を選択してください"
    puts "(1: 攻撃する, 2: 特殊技を使う, それ以外: 何もしない)"
    user_select = gets.chomp.to_i
    if user_select == 1
      attack(player)
    elsif user_select == 2
      special_action
    else
      puts "#{name}はぼーっとしていた"
    end
  end

  def is_dead?
    @hp <= 0
  end

  private

  def hello
    puts "#{name}です！よろしくお願いします！"
  end

  def attack(player)
    puts "#{name}の攻撃！"
    attack_point = @power
    if critical?
      puts "会心の一撃！"
      attack_point *= 2
    end
    puts "#{player.name}は#{attack_point}ポイントのダメージを受けた！"
    player.hp -= attack_point
  end

  def special_action
    puts "#{name}は変な踊りをした！"
    puts "場が少し静かになった。。"
  end

  def critical?
    rand(10) > 7
  end
end

class Warrior < Character
  private

  def hello
    puts "#{name}参上！いざ勝負！"
  end

  def special_action
    super
    @power += 2
    puts "#{name}の攻撃力が２ポイント上がった！"
  end
end

class Magician < Character
  private

  def hello
    puts "私は#{name}.."
  end

  def special_action
    puts "#{name}は呪文を唱えた！"
    @hp += 5
    puts "#{name}のHPが５ポイント回復した！"
  end
end

player1 = Warrior.new(name: "にんじゃわんこ", hp: 30, power: 5)
player2 = Magician.new(name: "ひつじ仙人", hp: 40, power: 6)
puts ""
puts "バトルスタート！"
puts ""
while true do
  puts "#{player1.name}のターン！"
  player1.act_to(player2)
  if player2.is_dead?
    puts "#{player2.name}は目の前が真っ暗になった。。"
    break
  end

  puts "Enterで次のアクションに進む"
  gets

  puts "#{player2.name}のターン！"
  player2.act_to(player1)
  if player1.is_dead?
    puts "#{player1.name}は目の前が真っ暗になった。。"
    break
  end

  puts "Enterで次のアクションに進む"
  gets
end
