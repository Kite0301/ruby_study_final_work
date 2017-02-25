books = [
  {
    book_num: 1,
    title: 'How Program Works',
    total_rate: 3,
    rate_count: 1,
    rate: 3,
  },
  {
    book_num: 2,
    title: 'Funny Ruby',
    total_rate: 0,
    rate_count: 0,
  },
]

# NOTE: reviewsとか作ってそれぞれの本のレビューテキストも作れば、かなり拡張性が出る？メソッドのレッスンにも引き継げるか？
# reviews = [
#   {
#     book_num: 2,
#     comment: "Very Good!",
#   },
# ]

puts "本のレビューを見てみましょう！"
books.each do |book|
  if book[:rate]
    puts "#{book[:title]}の評価は、星#{book[:rate]}です"
  else
    puts "#{book[:title]}の評価はまだありません"
  end

  puts "レビューしますか？（YES / NO）"
  answer = gets.chomp
  if answer == "YES"
    puts "1~5でレビューしましょう"
    rate = gets.chomp.to_i
    book[:total_rate] += rate
    book[:rate_count] += 1
    book[:rate] = book[:total_rate] / book[:rate_count]
    puts "現在のレートは#{book[:rate]}です"
  else
    next
  end

end
