# 投稿を確認したいユーザーを入力してください
user = "にんじゃわんこ"

posts = [
  {
    title: "Ruby勉強中",
    author: "にんじゃわんこ",
    content: "ハッシュが難しいな。。"
  },
  {
    title: "毛刈りしたよ",
    author: "ひつじ仙人",
  },
  {
    title: "Rails勉強中",
    author: "ひつじ仙人",
    content: "将来わんこに教えるために、、"
  },
  {
    title: "お腹すいた",
    author: "にんじゃわんこ",
  },
]

puts "#{user}の投稿一覧"
puts ""

posts.each do |post|
  if post[:author] == user
    puts "「#{post[:title]}」"
    if post[:content]
      puts post[:content]
    end
    puts ""
  end
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
（・break：なし）

その他
・ifの中にifがある
・if nilが自然
・改行のためのputs ""が受け入れられるか
