# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'
require 'juwelier'
Juwelier::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://guides.rubygems.org/specification-reference/ for more options
  gem.name = "rails-gui"
  gem.homepage = "http://github.com/AndyObtiva/rails-gui"
  gem.license = "MIT"
  gem.summary = %Q{Rails Graphical User Interface}
  gem.description = %Q{Rails Graphical User Interface - User-Friendly Rails Configuration (e.g. display routes in a table, run rails commands visually, etc...)}
  gem.email = "andy.am@gmail.com"
  gem.authors = ["Andy Maleh"]
  gem.files = Dir['rails-gui.gemspec', 'CHANGELOG.md', 'VERSION', 'LICENSE.txt', 'app/**/*', 'bin/**/*', 'config/**/*', 'db/**/*', 'docs/**/*', 'fonts/**/*', 'icons/**/*', 'images/**/*', 'lib/**/*', 'package/**/*', 'script/**/*', 'sounds/**/*', 'vendor/**/*', 'videos/**/*']
  gem.executables = ['rails-gui']
  
  # dependencies defined in Gemfile
end
Juwelier::RubygemsDotOrgTasks.new
require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'app' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

desc "Code coverage detail"
task :simplecov do
  ENV['COVERAGE'] = "true"
  Rake::Task['test'].execute
end

task :default => :test

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "rails-gui #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('app/**/*.rb')
end
