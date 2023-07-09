class AddProjectIdToSprints < ActiveRecord::Migration[7.0]
  def change
    add_column :sprints, :project_id, :integer
  end
end
