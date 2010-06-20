class String
  def to_pinyin
    h = Hash.new
    open('../data/idx99.txt','r').each do |line|
      a = line.gsub("\n","").split("\t")
      h.store a[0], a[1]
    end
    if h[self]
      return h[self]
    else
      return nil
    end
  end
end