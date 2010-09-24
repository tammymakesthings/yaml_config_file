class YAMLConfigFileGenerator < Rails::Generators::NamedBase
  
  source_root File.expand_path('../templates', __FILE__)
  
  argument :config_file_name, :type => :string, :default => "config_file" 
  
  class_option :skip_yaml_file, :type => :boolean, :default => false, :description => "Skip generation of the YAML file"
  class_option :skip_initializer, :type => :boolean, :default => false, :description => "Skip generation of the initializer"  
  
  def yaml_config_file
    template "config_file.yml", "config/#{config_file_name}.yml" unless options.skip_yaml_file?
    template "config_file.rb", "config/initializers/#{config_file_name}.rb" unless options.skip_initializer?
  end
    
end
