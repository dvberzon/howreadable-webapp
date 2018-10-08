class AddAgentEtcToParticipant < ActiveRecord::Migration[5.2]
  def change
    add_column :participants, :agent, :string
    add_column :participants, :ip, :string
    add_column :participants, :client_w, :integer
    add_column :participants, :client_h, :integer
  end
end
