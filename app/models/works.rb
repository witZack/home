class Works
  attr_reader :name, :description, :link
  # Constructor
  # @name Name of the work
  # @description Description of the work
  # @link HttpLink if available for the work
  def initialize(name=nil, description=nil, link=nil)
    @name=name
    @description=description
    @link=link
  end

  def self.fromYaml()
    yaml = YAML::load(File.open(Rails.root + "/etc/personal/works.yaml"))["works"]
    arr = []
    if !yaml.blank?
      yaml.each do |item|
        arr << self.new(item[:name],
          item[:description],
          item[:link])
      end
    end
    arr
  end
end
