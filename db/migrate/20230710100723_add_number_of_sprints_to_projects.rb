class AddNumberOfSprintsToProjects < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :number_of_sprints, :integer
  end
end
