olympics = [
  {year: 1896, city: "アテネ", country: "ギリシャ", area: "ヨーロッパ"},
  {year: 1900, city: "パリ", country: "フランス", area: "ヨーロッパ"},
  {year: 1904, city: "セントルイス", country: "アメリカ", area: "北米"},
  {year: 1908, city: "ロンドン", country: "イギリス", area: "ヨーロッパ"},
  {year: 1912, city: "ストックホルム", country: "スウェーデン", area: "ヨーロッパ"},
  {year: 1916, city: "ベルリン", country: "ドイツ", area: "ヨーロッパ", note: "第一次世界大戦で中止"},
  {year: 1920, city: "アントワープ", country: "ベルギー", area: "ヨーロッパ"},
  {year: 1924, city: "パリ", country: "フランス", area: "ヨーロッパ", note: "同じ都市での2回目の開催は初"},
  {year: 1928, city: "アムステルダム", country: "オランダ", area: "ヨーロッパ"},
  {year: 1932, city: "ロサンゼルス", country: "アメリカ", area: "北米"},
]

puts "1~10回大会のうちヨーロッパで開催されたオリンピック一覧"
olympics.each do |olympic|
  if olympic[:area] == "ヨーロッパ"
    puts "---------------------"
    puts "#{olympic[:year]}年#{olympic[:city]}大会"
    puts "国：#{olympic[:country]}"
    if olympic[:note]
      puts "豆知識：#{olympic[:note]}"
    end
  end
end

__END__
以下コメント


指標
・配列：あり
・ハッシュ：あり
（・複雑な配列/ハッシュ：あり）
・each：あり
・スコープ：なし？
・if nil：あり
（・break：なし）
