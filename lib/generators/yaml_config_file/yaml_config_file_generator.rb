# Generate a YAML configuration file, and an initializer to access the
# settings stored there.
#
# == Structure of the YAML Configuration File
#
# The YAML configuration file is a standard YAML file, similar to the
# standard Rails +database.yml+ file. It contains sections for each
# Rails environment, as well as a *global* section. The environment-specific
# section is parsed after the global section, so you can define settings
# and then override them on an environment-specific basis, like so:
#
#    global:
#      some_setting: false
#      another_setting: 3
#   
#    development:
#      some_setting: true    # Will be true in development environment, false otherwise
#
# The YAML file is also evaluated through ERB, like Rails' database.yml,
# so you can use ERB blocks in your configuration file. 
class YamlConfigFileGenerator < Rails::Generators::NamedBase
  
  source_root File.expand_path('../templates', __FILE__)
  
  # Option to skip generation of the YAML file
  class_option :skip_yaml_file, :type => :boolean, :default => false, :description => "Skip generation of the YAML file"
  
  # Option to skip generation of the initializer
  class_option :skip_initializer, :type => :boolean, :default => false, :description => "Skip generation of the initializer"  
  
  # Generates the YAML configuration file.
  def yaml_config_file
    template "config_file.yml", "config/#{gen_file_name}.yml" unless options.skip_yaml_file?
  end

  # Generates the initializer.
  def initializer
    template "config_file.rb", "config/initializers/#{gen_file_name}.rb" unless options.skip_initializer?
  end  
  
  private
  
  # Underscore the file name if it's provided CamelCased.
  def gen_file_name
    file_name.underscore
  end
end