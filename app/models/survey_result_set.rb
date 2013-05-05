class SurveyResultSet < ActiveRecord::Base
  belongs_to :user
  belongs_to :survey
  has_many :survey_results
end
