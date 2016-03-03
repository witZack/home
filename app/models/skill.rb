class Skill
  attr_reader :name, :branches
  # Constructor
  # @name Name of the Skill
  # @node Individual nodes / branches of skill
  def initialize(name=nil, branches=[])
    @name=name
    @branches=branches
  end
end
