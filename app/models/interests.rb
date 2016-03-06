class Interests
  attr_reader :name
  # Constructor
  # @name Name of the Interest
  def initialize(name=nil)
    @name = name
  end

  def self.fromYaml()
    yaml = YAML::load(File.open(Rails.root + "app/models/seeds/dev/interests.yaml"))["interests"]
    arr = []
    yaml.each do |item|
      arr << self.new(item[:name])
    end
    arr
  end
end
