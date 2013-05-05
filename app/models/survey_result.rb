class SurveyResult < ActiveRecord::Base
  belongs_to :survey_result_set
  attr_accessible :choice, :question
end
