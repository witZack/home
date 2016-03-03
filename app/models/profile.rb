class Profile
  attr_reader :name, :image, :profession, :jobTitle, :company
  # Constructor
  # @name Your name
  # @image Your image file
  # @profession Your profession
  # @jobTitle Your jobTitle
  # @company Your company
  def initialize(name, image="profile.jpg", profession, jobTitle, company)
    @name=name
    @image=image
    @profession=profession
    @jobTitle=jobTitle
    @company=company
  end
end
