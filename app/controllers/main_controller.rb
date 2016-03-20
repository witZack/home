# Site controller for webpages
class MainController < ApplicationController
  # Main Builder Page
  def index()
    @experiences = Experiences.fromYaml()
    @skills = Skills.fromYaml()
    @interests = Interests.fromYaml()
    @profile = Profile.fromYaml()
    @works = Works.fromYaml()
    @social_details = SocialDetails.fromYaml()
  end
end
