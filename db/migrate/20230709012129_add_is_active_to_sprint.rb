class AddIsActiveToSprint < ActiveRecord::Migration[7.0]
  def change
    add_column :sprints, :is_active, :boolean
  end
end
