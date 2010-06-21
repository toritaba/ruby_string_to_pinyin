# encoding: utf-8
require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "StringToPinyin" do
  before :each do
    @single_char = "名"
    @multiple_chars = "中华人民共和国"
    @nil_char = "a"
  end
  
  it "should return pinyin for a single character if found" do
    @single_char.to_pinyin.should == 'míng'
  end
  
  it "should return pinyin with spaces in between for multiple characters if found" do
    @multiple_chars.to_pinyin.should == 'zhōng huá rén mín gòng hé guó'
  end
  
  it "should return a character if its not found in the index" do
    @nil_char.to_pinyin.should == 'a'
  end
end
