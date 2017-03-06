# クラス・インスタンス：あり
# インスタンス変数：あり
# インスタンスメソッド：あり
# クラスメソッド：あり
# private：あり
# 継承：あり
# オーバーライド：あり
# super：あり
# 独自メソッド：あり

# どうしてもベストには思えない

class Character
  attr_accessor :name
  attr_accessor :hp

  def initialize(name: "名無しさん", hp: 1, power: 1)
    @name = name
    @hp = hp
    @power = power
  end

  def show_action_list
    puts "1: 攻撃する"
  end

  def act_to(player, action)
    if action == 1
      attack(player)
    else
      do_nothing
    end
  end

  private

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

  def critical?
    rand(10) > 7
  end

  def do_nothing
    puts "#{name}はぼーっとしていた。"
  end
end


class Warrior < Character
  def show_action_list
    super
    puts "2: パワーアップ"
  end

  def act_to(player, action)
    if action == 1
      attack(player)
    elsif action == 2
      power_up
    else
      do_nothing
    end
  end

  private

  def power_up
    puts "#{name}は筋トレをした！"
    puts "#{name}の攻撃力が2ポイント上がった！"
    @power += 2
  end
end


class Magician < Character
  def show_action_list
    super
    puts "2: 回復魔法"
  end

  def act_to(player, action)
    if action == 1
      attack(player)
    elsif action == 2
      heal
    else
      do_nothing
    end
  end

  private

  def heal
    puts "#{name}は呪文を唱えた！"
    puts "#{name}のHPが５ポイント回復した！"
    @hp += 5
  end
end

player1 = Warrior.new(name: "にんじゃわんこ", hp: 30, power: 5)
player2 = Magician.new(name: "ひつじ仙人", hp: 40, power: 6)
puts "#{player1.name}のターン！行動を選択してください"
player1.show_action_list
action = gets.chomp.to_i
player1.act_to(player2, action)
puts "#{player2.name}のターン！行動を選択してください"
player2.show_action_list
action = gets.chomp.to_i
player2.act_to(player1, action)
