class Interest
  attr_reader :name, :descriptions
  # Constructor
  # @name Name of the Interest
  # @descriptions List of description lines about interest
  def initialize(name=nil, descriptions=[])
    @name = name
    @descriptions=descriptions
  end
end
