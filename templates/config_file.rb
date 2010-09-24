# Initializer to load the YAML configuration file from config/<%= config_file_name %>

require 'yaml'
require 'erb'

config_file_yml =  YAML.load(ERB.new(File.read(File.join(Rails.root, "config", "<%= config_file_name %>.yml"))).result)
<%= config_file_name.upcase %> = config_file_yml["global"].merge!(config_file_yml[Rails.env]).with_indifferent_access