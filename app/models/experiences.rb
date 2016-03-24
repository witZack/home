require 'date'

class Experiences
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
    years = (days.round)/365.0
    years > 1 ? years.round(1).to_s + "\syears" : (years*12).round(0).to_s + "\smonths"
  end
  # Read information from yaml file
  def self.fromYaml()
    yaml = YAML::load(File.open(Rails.root + "/etc/personal/experiences.yaml"))["experiences"]
    arr = []
    if !yaml.blank?
      yaml.each do |item|
        startDate = (item[:start_year].blank? || item[:start_month].blank? ) ? nil : DateTime.new(item[:start_year],item[:start_month])
        endDate = (item[:end_year].blank? || item[:end_month].blank? ) ? nil : DateTime.new(item[:end_year],item[:end_month])
        arr << self.new(item[:employer],
          item[:employer_link],
          item[:job_title],
          item[:details],
          startDate,
          endDate)
      end
    end
    arr
  end

end
