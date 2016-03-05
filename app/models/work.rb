class Work
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
end
