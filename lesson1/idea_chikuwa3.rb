number = 678901234

puts "#{number}秒を言い換えると、、"

seconds = number % 60
number -= seconds
number /= 60

minutes = number % 60
number -= minutes
number /= 60

hours = number % 24
number -= hours
number /= 24

days = number % 365
number -= days
number /= 365

years = number

if years > 0
  puts "#{years}年"
end

if days > 0
  puts "#{days}日"
end

if hours > 0
  puts "#{hours}時間"
end

if minutes > 0
  puts "#{minutes}分"
end

if seconds > 0
  puts "#{seconds}秒"
end

puts "になります！"

__END__
以下コメント

指標
・計算：あり
・変数：あり
・変数の更新：なし
・文字連結：あり
・if：あり
・else：なし
・elsif：なし
・&&：なし
・||：なし
・!()：なし

その他
・ちょっと長い。分スタートとか時間スタートにすればもっとスマートにはなる
・else elsif && || がないのは物足りない
