require 'date'

class Memo
  attr_accessor :title
  attr_accessor :content

  def initialize(title:, content:)
    self.title = title
    self.content = content
  end

  def show
    puts "-----------------"
    puts "タイトル：#{self.title}"
    puts "内容：#{self.content}"
  end

  def update(title:, content:)
    if title != ""
      self.title = title
      puts "タイトルを変更しました"
    end
    if content != ""
      self.content = content
      puts "内容を変更しました"
    end
  end
end

class Diary < Memo
  attr_accessor :date

  def initialize(title:, content:)
    super
    self.date = Date.today
  end

  def show
    puts "-----------------"
    puts "日付：#{self.date}"
    puts "タイトル：#{self.title}"
    puts "内容：#{self.content}"
  end
end

notes = [
  Memo.new(title: "a", content: "b"),
  Diary.new(title: "c", content: "d")
]

puts "メモ(日記)アプリです"
loop do
  puts "何をしますか？番号を入力してください"
  puts "1: 一覧, 2: 編集, 3: メモ追加, 4: 日記追加, それ以外: 終了"
  action = gets.chomp.to_i
  if action == 1
    notes.each do |note|
      note.show
    end
  elsif action == 2
    puts "何番目のメモ(日記)を編集しますか？"
    index = gets.chomp.to_i
    note = notes[index - 1]
    puts "#{index}番目のメモ(日記)"
    note.show
    puts "タイトルを入力してください"
    title = gets.chomp
    puts "内容を入力してください"
    content = gets.chomp
    note.update(title: title, content: content)
  elsif action == 3
    puts "タイトルを入力してください"
    title = gets.chomp
    puts "内容を入力してください"
    content = gets.chomp
    new_memo = Memo.new(title: title, content: content)
    notes.push(new_memo)
  elsif action == 4
    puts "タイトルを入力してください"
    title = gets.chomp
    puts "内容を入力してください"
    content = gets.chomp
    new_diary = Diary.new(title: title, content: content)
    notes.push(new_diary)
  else
    break
  end
  puts "-----------------"
end

__END__
以下コメント

指標
クラス：あり
インスタンス：あり
複数のインスタンス：あり
インスタンスメソッド：あり
initializeメソッド：あり
インスタンス変数：あり
attr_accessor：(あり)
private：なし
クラスメソッド：(あり)

その他
タイトルを入力してください - のところを関数として用意してあげればそれほどgets.chompに注目させずに済む？
