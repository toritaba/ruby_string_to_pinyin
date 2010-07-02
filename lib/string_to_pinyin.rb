# encoding: utf-8

$KCODE = 'u' if RUBY_VERSION < '1.9'

class String

  def to_pinyin
    idx_file_path = File.expand_path('../../data/idx99-tone.txt',__FILE__)
    result = ""
    self.scan(/./) do |char|
      match = %x[grep -m1 '^#{char}' #{idx_file_path}]
      if match.empty?
        result = result + char
      else
        pinyin =  match.gsub("\n","").split("\t")[1]
        result = result + pinyin + " "
      end
    end
    return result.rstrip
  end
      
end
