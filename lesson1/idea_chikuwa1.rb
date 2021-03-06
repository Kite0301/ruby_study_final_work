# 好きな年を西暦で入力してください
year = 2000

if year < 1896 || year % 2 != 0
  puts "#{year}年にオリンピックは開催されていません。。"
elsif year % 4 == 0
  if year >= 1924 && year <= 1992
    puts "#{year}年は夏季・冬季両方のオリンピックが開催されました！"
  else
    puts "#{year}年は夏季オリンピックが開催されました！"
  end
else
  puts "#{year}年は冬季オリンピックが開催されました！"
end

__END__
以下コメント

指標
・計算：（あり）
・変数：あり
・変数の更新：なし
・文字連結：あり
・if：あり
・else：あり
・elsif：あり
・&&：あり
・||：あり
・!()：なし

その他
・けっこう複雑？（やりがいがあるor挫折しやすい）
・7行目を 1924 <= year <= 1992 とやりそう
・普通の計算がない（%だけ）
・1916, 1940, 1944は世界大戦の影響でちょっと異なるが無視している

参考
http://2020tokyo2020.com/jp/olympic/history.html
