class AddCompletedToParticipantTestCases < ActiveRecord::Migration[5.2]
  def change
    add_column :participant_test_cases, :completed, :boolean
  end
end
