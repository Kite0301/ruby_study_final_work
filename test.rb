class Memo
  attr_accessor :a

  def show
    puts self.a
  end
end

memo = Memo.new
memo.a = "a"
memo.show

