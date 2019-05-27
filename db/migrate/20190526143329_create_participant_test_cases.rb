class CreateParticipantTestCases < ActiveRecord::Migration[5.2]
  def change
    create_table :participant_test_cases do |t|
      t.integer :participant_id
      t.string :test_case_id
      t.text :exercise_patterns

      t.timestamps
    end
  end
end
