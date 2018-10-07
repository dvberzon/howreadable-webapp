class AddRandomisedAtToResponses < ActiveRecord::Migration[5.2]
  def change
    add_column :responses, :randomised_at, :datetime
  end
end
