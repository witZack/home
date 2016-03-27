class WorkExperience < ActiveRecord::Base

  belongs_to :user

  has_many :work_details

  # Calculate length of employment
  def employmentLength
    days = (end_date.nil? ? DateTime.now.to_date : end_date) - start_date
    years = (days.round)/365.0
    years > 1 ? years.round(1).to_s + "\syears" : [(years*12).round(0),1].max.to_s + "\smonths"
  end
end
