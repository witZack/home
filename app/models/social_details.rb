class SocialDetails
  attr_reader :facebook, :twitter, :linkedin, :github, :skype_username, :skype_display_name, :google_plus

  def initialize(facebook=nil,
    twitter=nil,
    linkedin=nil,
    github=nil,
    skype_username=nil,
    skype_display_name=nil,
    google_plus=nil)
    @facebook=facebook
    @twitter=twitter
    @linkedin=linkedin
    @github=github
    @skype_username=skype_username
    @skype_display_name=skype_display_name
    @google_plus=google_plus
  end

  def self.fromYaml()
    yaml = YAML::load(File.open(Rails.root + "/etc/personal/social_details.yaml"))["social_details"]
    self.new(yaml[:facebook],
      yaml[:twitter],
      yaml[:linkedin],
      yaml[:github],
      yaml[:skype_username],
      yaml[:skype_display_name],
      yaml[:google_plus])
  end
end
