require 'rubygems'
require 'rake'
require 'rake/gempackagetask'

PKG_FILES = FileList[
	  '[a-zA-Z]*',
          'templates/**/*'
]

spec = Gem::Specification.new do |s|
  s.name = "yaml_config_file"
  s.version = "0.0.1"
  s.author = "Tammy Cravit"
  s.email = "tcravit@taylored-software.com"
  s.homepage = "http://github.com/tammycravit/yaml_config_file"
  s.platform = Gem::Platform::RUBY
  s.summary = "YAML Configuration File generator for Rails 3"
  s.files = PKG_FILES.to_a
  s.require_path = "."
  s.has_rdoc = false
  s.extra_rdoc_files = ["README"]
  s.summary = "YAML Configuration File generator for Rails 3"
  s.description = "YAML Configuration File generator for Rails 3"
end

desc 'Turn this plugin into a gem.'
Rake::GemPackageTask.new(spec) do |pkg|
  pkg.need_zip = true
  pkg.need_tar = true
end
