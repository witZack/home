# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

User.destroy_all

# Creates base user
user = User.create(username: 'Wanderer',
  email: 'wanderer@wanderer.com',
  first_name: 'The',
  last_name: 'Wanderer',
  location: 'Nowhere')

# Extends user with Profile
Profile.create(user_id: user.id,
  about: "Oh, well, I'm the type of guy who will never settle down. " \
         "Where pretty girls are, well, you know that I'm around",
  main_image_link: "profile.jpg")

# Work experience
work1 = WorkExperience.create(user_id: user.id,
  employer: "The Wanderer LLC",
  employer_link: "profile.jpg",
  title: "CEO",
  summary: "Leader, champion, master.",
  start_date: 120.days.ago,
  end_date: 1.days.ago)
WorkExperience.create(user_id: user.id,
  employer: "Self Employed",
  employer_link: "profile.jpg",
  title: "The Legend",
  start_date: 360.days.ago,
  end_date: 120.days.ago)

# Work details
WorkDetail.create(work_experience_id: work1.id,
  detail: "Did some stuff")

Skill.create(
  user_id: user.id,
  title: "Traveling",
  disciplines: "Cooking")

# :profession: Wanderer
# :job_title: CEO
# :company: Wanderer LLC
# :languages_spoken: English
