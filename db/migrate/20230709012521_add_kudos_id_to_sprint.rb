class AddKudosIdToSprint < ActiveRecord::Migration[7.0]
  def change
    add_column :sprints, :kudos_id, :integer
  end
end
