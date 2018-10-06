class AddIndexToResponses < ActiveRecord::Migration[5.2]
  def change
    add_column :responses, :index, :integer
  end
end
