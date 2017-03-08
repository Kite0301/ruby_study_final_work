# IDとパスワードを入力してください
id = "hitsuji"
password = "sennin"

users = [
  {
    id: "ninja",
    password: "wanko",
    name: "にんじゃわんこ"
  },
  {
    id: 'hitsuji',
    password: "sennin",
    name: "ひつじ仙人",
  },
]

logged_in_user = nil

users.each do |user|
  if user[:id] == id && user[:password] == password
    logged_in_user = user
    break
  end
end

if logged_in_user
  puts "ログインに成功しました！"
  puts "ようこそ、#{logged_in_user[:name]}さん！"
else
  puts "ログインに失敗しました。"
end

__END__
以下コメント

指標
・配列：あり
・ハッシュ：あり
（・複雑な配列/ハッシュ：あり）
・each：あり
・スコープ：あり
・if nil：あり
（・break：あり）

その他
・logged_in_userにnilを代入させているのが微妙だが、ログインに失敗しましたを出すためには必要
・&&を使えている
・idのところはemailでもいいけど、打つのが面倒そう
