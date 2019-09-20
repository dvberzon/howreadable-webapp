class ChangeResponsesExerciseIdToString < ActiveRecord::Migration[5.2]
  def up
    change_column :responses, :exercise_id, :string
  end

  def down
    change_column :responses, :exercise_id, :integer
  end
end
