class AddRespondedToResponses < ActiveRecord::Migration[5.2]
  def change
    add_column :responses, :responded, :boolean
  end
end
