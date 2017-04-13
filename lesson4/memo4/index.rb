require 'date'
require './memo'
require './diary'

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
    data = Memo.get_data
    note.update(title: data[:title], content: data[:content])
  elsif action == 3
    data = Memo.get_data
    new_memo = Memo.new(title: data[:title], content: data[:content])
    notes.push(new_memo)
  elsif action == 4
    data = Memo.get_data
    new_diary = Diary.new(title: data[:title], content: data[:content])
    notes.push(new_diary)
  else
    break
  end
  puts "-----------------"
end
