# encoding: utf-8
class String

  def to_pinyin
    h = Hash.new
    idx_file_path = File.expand_path('../../data/idx99-tone.txt',__FILE__)
    open(idx_file_path,'r').each do |line|
      a = line.gsub("\n","").split("\t")
      h.store a[0], a[1]
    end
    result = ""
    self.scan(/./) do |char|
      if h[char]
        result = result + h[char] + " "
      else
        result = result + char
      end
    end
    return result.rstrip
  end

end
