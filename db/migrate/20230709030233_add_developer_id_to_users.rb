class AddDeveloperIdToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :developer_id, :integer
  end
end
