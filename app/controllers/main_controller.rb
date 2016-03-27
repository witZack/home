# Site controller for webpages
class MainController < ApplicationController
  # Main Builder Page
  def index()
    @user = User.first
    @user_profile = @user.profile
    @user_experiences = @user.work_experiences.order(start_date: :desc)
    @experiences = Experiences.fromYaml()
    @user_skills = @user.skills
    @interests = Interests.fromYaml()
    @cultures = Culture.fromYaml()
    @works = Works.fromYaml()
    @social_details = SocialDetails.fromYaml()
  end
end
