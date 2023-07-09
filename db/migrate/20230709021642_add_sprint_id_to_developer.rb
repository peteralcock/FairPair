class AddSprintIdToDeveloper < ActiveRecord::Migration[7.0]
  def change
    add_column :developers, :sprint_it, :integer
  end
end
