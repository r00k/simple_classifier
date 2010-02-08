require 'rubygems'
require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

PKG_VERSION = "1.3.1"

PKG_FILES = FileList[
    "lib/**/*", "bin/*", "test/**/*", "[A-Z]*", "Rakefile", "html/**/*"
]

desc "Default Task"
task :default => [ :test ]

# Run the unit tests
desc "Run all unit tests"
Rake::TestTask.new("test") { |t|
  t.libs << "lib"
  t.pattern = 'test/*/*_test.rb'
  t.verbose = true
}

# Make a console, useful when working on tests
desc "Generate a test console"
task :console do
   verbose( false ) { sh "irb -I lib/ -r 'classifier'" }
end

# Genereate the RDoc documentation
desc "Create documentation"
Rake::RDocTask.new("doc") { |rdoc|
  rdoc.title = "Ruby Classifier - Bayesian and LSI classification library"
  rdoc.rdoc_dir = 'html'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
}

desc "Generate gemspec with jeweler"
begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "dfhcc_classifier"
    gemspec.summary = "A simple bayesian classifier"
    gemspec.email = "benjamin_orenstein@dfci.harvard.edu"
    gemspec.homepage = "http://www.dfhcc.harvard.edu"
    gemspec.authors = ["Ben Orenstein"]
    gemspec.version = '1.3.3'
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler not available. Install it with: gem install jeweler"
end
