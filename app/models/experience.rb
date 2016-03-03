require 'date'

class Experience
  attr_reader :employer, :employerLink, :jobTitle, :details, :startDate, :endDate
  # Constructor
  # @employerName EmployerName
  # @employerLink Link to employer website
  # @jobTitle Title of the job while employed
  # @details List of details of the job
  # @startDate Date of the start of employment
  # @endDate Date of the end of employment
  def initialize(employerName=nil, employerLink=nil, jobTitle=nil, details=[], startDate=nil, endDate=nil)
    @employer=employerName
    @employerLink=employerLink
    @jobTitle=jobTitle
    @details=details
    @startDate=startDate
    @endDate=endDate
  end
  # Calculate length of employment
  def employmentLength
    days = (endDate.nil? ? DateTime.now.to_date : endDate) - startDate
    (days.round)/365
  end
end
