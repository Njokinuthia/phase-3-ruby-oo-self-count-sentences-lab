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
  #   sentences = 0
  #   # # what punctuation we're checking for
  #   punctuation = [".", "?", "!"]
  #   # # iterate over every character in the string
  #   self.chars.each.with_index do |char, index|
  #   #   # check if the character is a punctuation, and if the _next_ character is _not_ a punctuation
  #     if punctuation.include?(char) && !punctuation.include?(self[index + 1])
  #       sentences += 1
  #     end
  #   end
  #   puts sentences    
  # end
  self.split(/\.|\?|!/).filter { |sentence| !sentence.empty? }.size
  end

end


# puts "The weather outside is frightful.".sentence? 
# puts "But the fire is so delightful".sentence?

puts "This is a string! It has three sentences. Right?".count_sentences