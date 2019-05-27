class AddExerciseIdToResponses < ActiveRecord::Migration[5.2]
  def change
    add_column :responses, :exercise_id, :integer
    add_column :responses, :pattern, :string
  end
end
