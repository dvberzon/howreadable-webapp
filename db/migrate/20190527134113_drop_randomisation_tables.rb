class DropRandomisationTables < ActiveRecord::Migration[5.2]
  def up
    drop_table :random_sequences
    drop_table :random_sequence_entries
  end

  def down
    create_table :random_sequences do |t|
      t.string :test_case
      t.string :language
      t.integer :current_index
      t.timestamps null: false
    end
    create_table :random_sequence_entries do |t|
      t.string :value
      t.integer :index
      t.integer :block_index
      t.datetime :assigned_at
      t.integer :assigned_to
      t.boolean :locked
      t.integer :random_sequence_id
      t.timestamps null: false
    end
  end
end
