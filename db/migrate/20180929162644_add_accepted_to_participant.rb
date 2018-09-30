class AddAcceptedToParticipant < ActiveRecord::Migration[5.2]
  def change
    add_column :participants, :accepted, :boolean
  end
end
