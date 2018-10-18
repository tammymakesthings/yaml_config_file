RSpec.describe YamlConfigFile do
  context "gem packaging" do
    it "has a version number" do
      expect(YamlConfigFile::VERSION).not_to be nil
    end
  end
end
