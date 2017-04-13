require './memo'

class Diary < Memo
  attr_accessor :date

  def initialize(title:, content:)
    super
    self.date = Date.today
  end

  def show
    puts "-----------------"
    puts "日付：#{self.date}"
    puts "タイトル：#{self.title}"
    puts "内容：#{self.content}"
  end
end
