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

class Todo < Memo
  attr_accessor :done

  def initialize(title:, content:)
    super
    self.done = false
  end

  def show
    super
    if self.done
      puts "完了済"
    else
      puts "未完了"
    end
  end

  def update(title:, content:)
    puts "完了状態を変更しますか？（1: する, それ以外: しない）"
    action = gets.chomp.to_i
    if action == 1
      toggle_done_state
    end
    super
  end

  private

  def toggle_done_state
    # NOTE: 否定の「!」は勉強していない
    if self.done
      self.done = false
    else
      self.done = true
    end
  end
end

notes = [
  Memo.new(title: "a", content: "b"),
  Todo.new(title: "c", content: "d")
]

puts "メモアプリです"
loop do
  puts "何をしますか？番号を入力してください"
  puts "1: 一覧, 2: 編集, それ以外: 終了"
  action = gets.chomp
  if action == 1
    notes.each do |note|
      note.show
    end
  elsif action == 2
    puts "何番目のメモを編集しますか？"
    index = gets.chomp.to_i
    note = notes[index - 1]
    puts "#{index}番目のメモ"
    note.show
    puts "タイトルを入力してください"
    title = gets.chomp
    puts "内容を入力してください"
    content = gets.chomp
    note.update(title: title, content: content)
    note.show
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
private：あり
クラスメソッド：なし
