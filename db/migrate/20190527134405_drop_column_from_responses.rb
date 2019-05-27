class DropColumnFromResponses < ActiveRecord::Migration[5.2]
  def change
    remove_column :responses, :example, :string
    remove_column :responses, :readable_score, :integer
    remove_column :responses, :comments, :text
    remove_column :responses, :randomised_at, :datetime
    remove_column :responses, :index, :integer
  end
end
