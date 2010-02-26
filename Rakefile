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
  rdoc.title = "simple_classifier - A simple Bayesian classifier"
  rdoc.rdoc_dir = 'html'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
}

desc "Generate gemspec with jeweler"
begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "simple_classifier"
    gemspec.summary = "A simple bayesian classifier"
    gemspec.email = "ben.orenstein@gmail.com"
    gemspec.homepage = "http://github.com/r00k/simple_classifier"
    gemspec.authors = ["Ben Orenstein", "Lucas Carlson", "David Fayram II"]
    gemspec.version = '1.3.4'
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler not available. Install it with: gem install jeweler"
end
