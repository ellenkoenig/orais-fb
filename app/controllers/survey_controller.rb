class SurveyController < ApplicationController
  def index
    @survey = YAML.load_file(File.join(Rails.root, "app", "assets", "surveys", "survey-en.yml")) 
    @results = SurveyResultSet.new
    @survey["questions"].each{|question|
      result = SurveyResult.new
      result.question = question[0]
      @results.survey_results << result
    }
    @test = []
  end

  def results
    logger.debug("hey" + params.to_s)
  end
end
