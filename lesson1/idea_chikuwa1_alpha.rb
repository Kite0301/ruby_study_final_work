# 好きな年を西暦で入力してください
year = 2000

if year < 1896
  puts "#{year}年にオリンピックはまだありません。。"
elsif year == 1916 || year == 1940 || year == 1944
  puts "#{year}年は世界情勢により、オリンピックは開催されませんでした。。"
elsif year % 4 == 0
  puts "#{year}年は夏季オリンピックが開催されました！"
else
  puts "#{year}年は夏季オリンピックイヤーではありません。"
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
・&&：なし
・||：あり
・!()：なし

その他
・豆知識がある
・普通の計算がない（%だけ）

参考
http://2020tokyo2020.com/jp/olympic/history.html
