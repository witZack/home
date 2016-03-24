class Interests
  attr_reader :name
  # Constructor
  # @name Name of the Interest
  def initialize(name=nil)
    @name = name
  end

  def self.fromYaml()
    yaml = YAML::load(File.open(Rails.root + "/etc/personal/interests.yaml"))["interests"]
    arr = []
    if !yaml.blank?
      yaml.each do |item|
        arr << self.new(item[:name])
      end
    end
    arr
  end
end
