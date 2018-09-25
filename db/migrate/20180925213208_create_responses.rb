class CreateResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :responses do |t|
      t.string :test_case
      t.string :example
      t.references :participant, foreign_key: true
      t.integer :responded_ms
      t.string :given_answer
      t.integer :readable_score
      t.text :comments

      t.timestamps
    end
  end
end
