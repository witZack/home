# Site controller for webpages
class MainController < ApplicationController
  # Main Builder Page
  def index()
    @experiences = experiences
    @skills = skills
    @about = about
    @interests = interests
    @profile_image = profile_image
  end

  private
  # This section is where you input your information
  def about()
    "This is some text about me."
  end
  def experiences()
    [
      Experience.new("MyFitnessPal",
        "http://myfitnesspal.com",
        "Senior Software Engineer",
        ["Magician"],
        DateTime.new(2014,1,10)),
      Experience.new("MyFitnessPal",
        "http://myfitnesspal.com",
        "Software Engineer",
        ["Magician"],
        DateTime.new(2012,1,10),
        DateTime.new(2013,1,10))
    ]
  end
  def skills()
    [
      Skill.new("Languages",
        ["Magician"]),
      Skill.new("API",
        ["Design"])
    ]
  end
  def interests()
    [

    ]
  end
  def profile_image()
    "assets/images/profile.jpg"
  end
end
