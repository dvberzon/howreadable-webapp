class CreateParticipants < ActiveRecord::Migration[5.2]
  def change
    create_table :participants do |t|
      t.string :contact
      t.string :main_language
      t.integer :years_programming
      t.string :language_choice

      t.timestamps
    end
  end
end
