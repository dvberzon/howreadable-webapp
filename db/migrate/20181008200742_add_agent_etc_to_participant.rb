class AddAgentEtcToParticipant < ActiveRecord::Migration[5.2]
  def change
    add_column :participants, :agent, :string
    add_column :participants, :ip, :string
    add_column :participants, :device_w, :integer
    add_column :participants, :device_h, :integer
  end
end
