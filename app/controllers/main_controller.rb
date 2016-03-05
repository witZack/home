# Site controller for webpages
class MainController < ApplicationController
  # Main Builder Page
  def index()
    @experiences = experiences
    @skills = skills
    @about = about
    @interests = interests
    # Profile information loaded
    @profile = Profile.fromEnv()
    @works = works
    @interests = interests
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
  # Your skills
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
      Interest.new("Aaaaaa", ["This is a test"])
    ]
  end
  def works()
    [
      Work.new("Personal-Site",
        "A personal site capable of being cloned and configured for other users",
        "https://github.com/witZack/personal-site")
    ]
  end
end
