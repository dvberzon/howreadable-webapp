class AddCanContactToParticipant < ActiveRecord::Migration[5.2]
  def change
    add_column :participants, :can_contact, :boolean
  end
end
