class AddProjectIdToPairings < ActiveRecord::Migration[7.0]
  def change
    add_column :pairings, :project_id, :integer
  end
end
