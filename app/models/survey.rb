class Survey < ActiveRecord::Base
  has_many :survey_result_sets
  attr_accessible :filename
end
