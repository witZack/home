# Site controller for webpages
class MainController < ApplicationController
  # Main Builder Page
  def index()
    @experiences = experiences
    @skills = skills
    @about = about
    @interests = interests
    @profile = profile
    @works = works
    @interests = interests
    @linkedin = "www.linkedin.com/in/whitneyzack"
    @twitter = "https://twitter.com/Nom_De_PIume"
    @facebook = "https://www.facebook.com/wcz8292"
    @github = "https://github.com/witZack"
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
  def profile()
    Profile.new("Whitney Zack", "profile.jpg", "Software Engineer", "Senior Software Engineer", "UnderArmour")
  end
end
