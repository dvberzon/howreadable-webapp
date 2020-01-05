class AddTestCaseOrderToParticipants < ActiveRecord::Migration[5.2]
  def change
    add_column :participants, :test_case_order, :text
  end
end
