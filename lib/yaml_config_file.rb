require "yaml_config_file/version"

Dir[File.join(File.dirname(__FILE__), "generators", "*.rb")].each { |f| require f }
