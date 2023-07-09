class AddManagerIdToSprint < ActiveRecord::Migration[7.0]
  def change
    add_column :sprints, :manager_id, :integer
  end
end
