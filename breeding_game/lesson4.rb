class Character
  def initialize(name)
    @name = name
    @energy = 100
  end

  def info
    puts "---------------"
    puts "名前：#{@name}"
    puts "体力：#{@energy}ポイント"
    if hungry?
      puts "#{@name}は疲れているようだ。"
    end
  end

  def eat
    puts "#{@name}はご飯を食べた。"
    @energy += 10
    puts "#{@name}の体力が10ポイント回復した。"
  end

  private

  def hungry?
    return @energy < 10
  end
end

class Dog < Character
  def initialize(name)
    super
    @speed = 50
  end

  def info
    super
    puts "走力：#{@speed}ポイント"
    if fast?
      puts "#{@name}は俊足だ！"
    end
    puts "---------------"
  end

  def act
    if hungry?
      puts "#{@name}はお腹が減って動けない。"
      return
    end
    puts "#{@name}は遊んだ。"
    @energy -= 10
    @speed += 6
    puts "#{@name}の体力が10ポイント減った。"
    puts "#{@name}は速く走れるようになった。"
  end

  private

  def fast?
    @speed > 70
  end
end

class Sheep < Character
  def initialize(name)
    super
    @mental = 50
  end

  def info
    super
    puts "メンタルヘルス：#{@mental}ポイント"
    if awaken?
      puts "#{@name}は悟りを開いている！"
    end
    puts "---------------"
  end

  def act
    if hungry?
      puts "#{@name}はお腹が減って動けない。"
      return
    end
    puts "#{@name}は瞑想した。"
    @energy -= 10
    @mental += 8
    puts "#{@name}の体力が10ポイント減った。"
    puts "#{@name}のメンタルヘルスが向上した。"
  end

  private

  def awaken?
    return @mental > 80
  end
end

puts "どちらのキャラを選択する？"
puts "1: わんこ, それ以外: ひつじ"
character = gets.chomp
puts "名前を入力してね"
name = gets.chomp
if character == "1"
  pet = Dog.new(name)
else
  pet = Sheep.new(name)
end

loop do
  pet.info
  puts "何をするか決めてね"
  puts "1: エサをあげる, 2: 自由行動させる, それ以外: 育成を終える"
  action = gets.chomp
  if action == "1"
    pet.eat
  elsif action == "2"
    pet.act
  else
    break
  end
end
