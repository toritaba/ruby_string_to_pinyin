class String

  def to_pinyin
    h = Hash.new
    open('../data/idx99-tone.txt','r').each do |line|
      a = line.gsub("\n","").split("\t")
      h.store a[0], a[1]
    end
    result = ""
    self.scan(/./) do |char|
      if h[char]
        result = result + h[char] + " "
      else
        result = result + self + " "
      end
    end
    return result.rstrip
  end

end
