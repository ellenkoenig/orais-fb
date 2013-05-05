class CreateSurveyResultSets < ActiveRecord::Migration
  def change
    create_table :survey_result_sets do |t|
      t.references :user
      t.references :survey

      t.timestamps
    end
    add_index :survey_result_sets, :user_id
    add_index :survey_result_sets, :survey_id
  end
end
