# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{string_to_pinyin}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Toritaba"]
  s.date = %q{2010-06-21}
  s.description = %q{Adds a 'to_pinyin' method to Ruby's String class to convert Simplified Chinese characters to Hanyu Pinyin}
  s.email = %q{toritaba@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README"
  ]
  s.files = [
    "CHANGELOG",
     "CREDITS",
     "LICENSE",
     "README",
     "Rakefile",
     "VERSION",
     "data/idx99-tone.txt",
     "lib/string_to_pinyin.rb",
     "pkg/string_to_pinyin-0.1.0.gem",
     "spec/spec.opts",
     "spec/spec_helper.rb",
     "spec/string_to_pinyin_spec.rb",
     "string_to_pinyin.gemspec"
  ]
  s.homepage = %q{http://github.com/toritaba/string_to_pinyin}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Converts Simplified Chinese characters to pinyin}
  s.test_files = [
    "spec/string_to_pinyin_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 1.2.9"])
    else
      s.add_dependency(%q<rspec>, [">= 1.2.9"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 1.2.9"])
  end
end
