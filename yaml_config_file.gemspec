
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "yaml_config_file/version"

Gem::Specification.new do |spec|
  spec.name          = "yaml_config_file"
  spec.version       = YamlConfigFile::VERSION
  spec.authors       = ["Tammy Cravit"]
  spec.email         = ["tammycravit@me.com"]

  spec.summary = %q{YAML Configuration File generator for Rails 3}
  spec.description = %q{YAML Configuration File generator for Rails 3}
  spec.homepage      = "https://github.com/tammycravit/yaml_config_file"
  spec.license       = "Apache-2.0"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", "~> 3.0.0"
  spec.add_dependency "tcravit_ruby_lib"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3.7"
  spec.add_development_dependency "ammeter", "~> 1.1"
end
