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

def show(olympic)
  puts "---------------------"
  puts "#{olympic[:year]}年#{olympic[:city]}大会"
  puts "国：#{olympic[:country]}"
  if olympic[:note]
    puts "豆知識：#{olympic[:note]}"
  end
end

def show_olympics(olympics, options={})
  min_year = 0
  max_year = 9999
  if options[:min_year]
    min_year = options[:min_year]
  end
  if options[:max_year]
    max_year = options[:max_year]
  end

  olympics.each do |olympic|
    if min_year <= olympic[:year] && olympic[:year] <= max_year
      show olympic
    end
  end
end

show_olympics(olympics, {max_year: 1900})

__END__
以下コメント

指標
・引数がないメソッド：なし
・引数が1つのメソッド：あり
・引数が複数のメソッド：あり
・戻り値のあるメソッド：なし
（・真偽値を返すメソッド：なし）
・配列またはハッシュを引数にとるメソッド：あり
・配列またはハッシュを返すメソッド：なし
・デフォルト引数：あり

その他
・メソッドの中でメソッドを呼んでいる
