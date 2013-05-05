class CreateSurveyResults < ActiveRecord::Migration
  def change
    create_table :survey_results do |t|
      t.integer :question
      t.integer :choice
      t.references :result_set

      t.timestamps
    end
    add_index :survey_results, :result_set_id
  end
end
