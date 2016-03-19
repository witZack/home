class Skills
  attr_reader :title, :branches
  # Constructor
  # @title Title/Name of the Skill
  # @node Individual nodes / branches of skill
  def initialize(title=nil, branches=[])
    @title=title
    @branches=branches
  end

  def self.fromYaml()
    yaml = YAML::load(File.open(Rails.root + "/etc/personal/skills.yaml"))["skills"]
    arr = []
    yaml.each do |item|
      arr << self.new(item[:title],
        item[:branches])
    end
    arr
  end
end
