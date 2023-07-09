class AddIsSuccessfulToSprint < ActiveRecord::Migration[7.0]
  def change
    add_column :sprints, :is_successful, :boolean
  end
end
