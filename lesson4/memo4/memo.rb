class Memo
  attr_accessor :title
  attr_accessor :content

  def initialize(title:, content:)
    self.title = title
    self.content = content
  end

  def show
    puts "-----------------"
    puts "タイトル：#{self.title}"
    puts "内容：#{self.content}"
  end

  def update(title:, content:)
    if title != ""
      self.title = title
      puts "タイトルを変更しました"
    end
    if content != ""
      self.content = content
      puts "内容を変更しました"
    end
  end

  def Memo.get_data
    puts "タイトルを入力してください"
    title = gets.chomp
    puts "内容を入力してください"
    content = gets.chomp
    return {title: title, content: content}
  end
end
