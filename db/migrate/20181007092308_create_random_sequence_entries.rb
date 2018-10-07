class CreateRandomSequenceEntries < ActiveRecord::Migration[5.2]
  def change
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
