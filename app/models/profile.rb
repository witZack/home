class Profile
  attr_reader :name, :about, :image, :profession, :jobTitle, :company, :location, :languages_spoken
  # Constructor
  # @name Your name
  # @image Your image file
  # @profession Your profession
  # @jobTitle Your jobTitle
  # @company Your company
  def initialize(name, about, image="profile.jpg", profession, jobTitle, company, location, languages_spoken)
    @name=name
    @about=about
    @image=image
    @profession=profession
    @jobTitle=jobTitle
    @company=company
    @location=location
    @languages_spoken=languages_spoken
  end

  def self.fromYaml()
    yaml = YAML::load(File.open(Rails.root + "app/models/seeds/dev/profile.yaml"))["profile"]
    self.new(yaml[:name],
    yaml[:about],
    yaml[:image_link],
    yaml[:profession],
    yaml[:job_title],
    yaml[:company],
    yaml[:location],
    yaml[:languages_spoken])
  end

end
