# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{simple_classifier}
  s.version = "2.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ben Orenstein", "Lucas Carlson", "David Fayram II"]
  s.date = %q{2010-02-26}
  s.email = %q{ben.orenstein@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "lib/simple_classifier.rb",
     "lib/simple_classifier/bayes.rb",
     "lib/simple_classifier/extensions/string.rb",
     "lib/simple_classifier/extensions/word_hash.rb",
     "simple_classifier.gemspec",
     "test/bayes/bayesian_test.rb",
     "test/extensions/word_hash_test.rb",
     "test/test_helper.rb"
  ]
  s.homepage = %q{http://github.com/r00k/simple_classifier}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{A simple bayesian classifier}
  s.test_files = [
    "test/test_helper.rb",
     "test/bayes/bayesian_test.rb",
     "test/extensions/word_hash_test.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<stemmer>, [">= 0"])
    else
      s.add_dependency(%q<stemmer>, [">= 0"])
    end
  else
    s.add_dependency(%q<stemmer>, [">= 0"])
  end
end

