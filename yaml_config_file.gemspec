# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{yaml_config_file}
  s.version = "0.1.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tammy Cravit"]
  s.date = %q{2010-09-24}
  s.description = %q{YAML Configuration File generator for Rails 3}
  s.email = %q{tcravit@taylored-software.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README",
     "README.rdoc",
     "Rakefile",
     "USAGE",
     "VERSION",
     "lib/generators/yaml_config_file/templates/config_file.rb",
     "lib/generators/yaml_config_file/templates/config_file.yml",
     "lib/generators/yaml_config_file/yaml_config_file_generator.rb",
     "yaml_config_file.gemspec"
  ]
  s.homepage = %q{http://github.com/tammycravit/yaml_config_file}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{YAML Configuration File generator for Rails 3}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

