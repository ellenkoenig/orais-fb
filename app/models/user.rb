class User < ActiveRecord::Base
  has_many :survey_result_sets
  attr_accessible :name, :profile_id, :profile_link
end
