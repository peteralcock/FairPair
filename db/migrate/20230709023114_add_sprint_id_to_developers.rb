class AddSprintIdToDevelopers < ActiveRecord::Migration[7.0]
  def change
    add_column :developers, :sprint_id, :integer
  end
end
