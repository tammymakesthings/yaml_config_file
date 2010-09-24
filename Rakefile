require 'rubygems'
require 'rake'
require 'rake/rdoctask'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "yaml_config_file"
    gem.summary = %Q{YAML Configuration File generator for Rails 3}
    gem.description = %Q{YAML Configuration File generator for Rails 3}
    gem.email = "tcravit@taylored-software.com"
    gem.homepage = "http://github.com/tammycravit/yaml_config_file"
    gem.authors = ["Tammy Cravit"]
    gem.add_dependency "rails", ">= 3.0.0"
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "yaml_config_file #{version}"
  rdoc.rdoc_files.include('README.rdoc')
  rdoc.rdoc_files.include('lib/**/*.rb')
end