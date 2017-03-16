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

# 引数なしメソッド
def show_all_olympics
  olympics.each do |olympic|
    puts "---------------------"
    puts "#{olympic[:year]}年#{olympic[:city]}大会"
    puts "国：#{olympic[:country]}"
    if olympic[:note]
      puts "豆知識：#{olympic[:note]}"
    end
  end
end

# 引数ありメソッド
def show_olympics_by_country(country)
  olympics.each do |olympic|
    if olympic[:country] == country
      puts "---------------------"
      puts "#{olympic[:year]}年#{olympic[:city]}大会"
      puts "国：#{olympic[:country]}"
      if olympic[:note]
        puts "豆知識：#{olympic[:note]}"
      end
    end
  end
end

# 引数複数メソッド
def show_olympics_between(min_year, max_year)
  olympics.each do |olympic|
    if min_year <= olympic[:year] && olympic[:year] <= max_year
      puts "---------------------"
      puts "#{olympic[:year]}年#{olympic[:city]}大会"
      puts "国：#{olympic[:country]}"
      if olympic[:note]
        puts "豆知識：#{olympic[:note]}"
      end
    end
  end
end

# 戻り値のあるメソッド
def count_olympics(area)
  count = 0
  olympics.each do |olympic|
    if olympic[:area] == area
      count += 1
    end
  end
  return count
end

# 真偽値を返すメソッド(1)
def is_olympic_year?(year)
  return year % 4 == 0
end

# 真偽値を返すメソッド(2) 途中にreturnがあるver レッスン1で扱った内容
def is_olympic_year?(year)
  if year < 1896
    return false
  end
  if year % 4 != 0
    return false
  end
  if year == 1916 || year == 1940 || year == 1944
    return false
  end
  return true
end

# 真偽値を返すメソッド(3)　途中にreturnがあるver
def held_olympic?(country)
  olympics.each do |olympic|
    if olympic[:country] == country
      return true
    end
  end
  return false
end

# ハッシュを引数にとるメソッド
def show_olympic_data(olympic)
  puts "---------------------"
  puts "#{olympic[:year]}年#{olympic[:city]}大会"
  puts "国：#{olympic[:country]}"
  if olympic[:note]
    puts "豆知識：#{olympic[:note]}"
  end
end

# ハッシュを返すメソッド
def get_olympic_data_with_year(year)
  olympics.each do |olympic|
    if olympic[:year] == year
      return olympic
    end
  end
end

# デフォルト引数
def show_olympics_between(min_year, max_year=9999)
  olympics.each do |olympic|
    if min_year <= olympic[:year] && olympic[:year] <= max_year
      show_olympic_data(olympic)
    end
  end
end
