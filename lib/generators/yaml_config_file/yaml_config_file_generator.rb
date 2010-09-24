class YamlConfigFileGenerator < Rails::Generators::NamedBase
  
  source_root File.expand_path('../templates', __FILE__)
  
  class_option :skip_yaml_file, :type => :boolean, :default => false, :description => "Skip generation of the YAML file"
  class_option :skip_initializer, :type => :boolean, :default => false, :description => "Skip generation of the initializer"  
  
  def yaml_config_file
    template "config_file.yml", "config/#{gen_file_name}.yml" unless options.skip_yaml_file?
    template "config_file.rb", "config/initializers/#{gen_file_name}.rb" unless options.skip_initializer?
  end
  
  private
  def gen_file_name
    file_name.underscore
  end
end
