class AddSkipToResponses < ActiveRecord::Migration[5.2]
  def change
    add_column :responses, :skipped, :boolean
  end
end
