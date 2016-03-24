class Culture
  attr_reader :area, :attributes
  # Constructor
  # @name Name of the Culture
  def initialize(area=nil, attributes)
    @area = area
    @attributes = attributes
  end

  def self.fromYaml()
    yaml = YAML::load(File.open(Rails.root + "/etc/personal/culture.yaml"))["culture"]
    arr = []
    if !yaml.blank?
      yaml.each do |item|
        arr << self.new(item[:area],
          item[:attributes])
      end
    end
    arr
  end
end
