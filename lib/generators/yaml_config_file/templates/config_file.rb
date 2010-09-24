# Initializer to load the YAML configuration file from config/<%= gen_file_name %>

require 'yaml'
require 'erb'

<%= gen_file_name %>_yml =  YAML.load(ERB.new(File.read(File.join(Rails.root, "config", "<%= gen_file_name %>.yml"))).result)
<%= gen_file_name.upcase %> = <%= gen_file_name %>_yml["global"].merge!(<%= gen_file_name %>_yml[Rails.env]).with_indifferent_access