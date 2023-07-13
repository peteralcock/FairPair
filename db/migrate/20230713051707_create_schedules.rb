class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.json :json_schedule
      t.text :raw_text_schedule
      t.integer :project_id
      t.integer :sprint_id
      t.integer :user_id
      t.integer :manager_id
      t.boolean :is_approved
      t.integer :approved_at

      t.timestamps
    end
  end
end
