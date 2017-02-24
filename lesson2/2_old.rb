# クイズ
# レッスン２でtimesを扱わなくなったのでボツ
# よくない点： クイズ自体の構造が難しい・コード量が多い

answer = rand(20) + 1

puts "数当てゲームです。答えは1~20のどれかです。"
puts "1~9の数値を入力して、答えをその数値で割ったときの余りを出力します。"
puts "このヒントを最大4回繰り返した後に答えの数値を回答してください。"

# ここから演習分のコード

4.times do |i|
  puts ""
  puts "#{i + 1}回目のヒントです。1~9の数値を入力してください。"
  puts "(skipと入力すると回答に移ります)"
  input = gets.chomp

  if input == "skip"
    break
  end

  number = input.to_i
  if number < 1 || number > 9
    puts "1から9までの数値が入力されませんでした。"
    next
  end

  rest = answer % number
  puts "#{number}で割った余りは#{rest}でした。"
end

puts ""
puts "答えはいくつでしょうか？入力してください。"
user_answer = gets.chomp.to_i
if user_answer == answer
  puts "正解です！"
else
  puts "不正解です。。"
end