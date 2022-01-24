require 'pry'

class String
  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    self.split(/\.|\?|\!/).delete_if{|word| word.size<2}.count
    #count works for array, not string
  end
end

puts "Hello, World!!!".count_sentences.inspect

class Test
  def bar=(val)
  end
  def bar
    @bar
  end
  def baz=(val)
    self.bar = val
  end
  def baz
    self.bar
  end
end

obj = Test.new
obj.bar = 6