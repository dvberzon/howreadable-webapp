class CreateRandomSequences < ActiveRecord::Migration[5.2]
  def change
    create_table :random_sequences do |t|
      t.string :test_case
      t.string :language
      t.integer :current_index
      t.timestamps null: false
    end
  end
end