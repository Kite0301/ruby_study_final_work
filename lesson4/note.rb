class Note
  def initialize(title: "なし", content: "なし")
    @title = title
    @content = content
  end

  def show
    puts "-----------------"
    puts "タイトル：#{@title}"
    puts "内容：#{@content}"
  end

  def update(title: "", content: "")
    if title != ""
      @title = title
      puts "タイトルを変更しました"
    end
    if content != ""
      @content = content
      puts "内容を変更しました"
    end
  end

  def Note.get_note_data
    puts "新しいタイトルを入力してください(Enterでスキップ)"
    title = gets.chomp
    puts "新しい内容を入力してください(Enterでスキップ)"
    content = gets.chomp
    return {title: title, content: content}
  end
end

class Todo < Note
  def initialize(title: "なし", content: "なし")
    super
    @done = false
  end

  def show
    super
    if @done
      puts "完了済"
    else
      puts "未完了"
    end
  end

  def update(title: "", content: "")
    puts "完了状態を変更しますか？（1: する, それ以外: しない）"
    action = gets.chomp.to_i
    if action == 1
      toggle_done_state
    end
    super
  end

  private

  def toggle_done_state
    if @done
      @done = false
    else
      @done = true
    end
  end
end

notes = [
  Note.new(title: "a", content: "b"),
  Todo.new(title: "c", content: "d")
]

puts "メモアプリです"
loop do
  puts "何をしますか？番号を入力してください"
  puts "1: 一覧, 2: 編集, 3: 追加, それ以外: 終了"
  action = gets.chomp.to_i
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
    user_input = Note.get_note_data
    note.update(title: user_input[:title], content: user_input[:content])
    note.show
  elsif action == 3
    puts "メモを作りますか、Todoを作りますか"
    puts "(1: メモ, それ以外: Todo)"
    user_select = gets.chomp.to_i
    user_input = Note.get_note_data
    if user_select == 1
      new_item = Note.new(title: user_input[:title], content: user_input[:content])
    else
      new_item = Todo.new(title: user_input[:title], content: user_input[:content])
    end
    notes.push(new_item)
    new_item.show
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
attr_accessor：なし
private：あり
クラスメソッド：あり
