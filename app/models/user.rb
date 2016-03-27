class User < ActiveRecord::Base

  has_one :profile

  has_many :work_experiences
  has_many :skills

end
