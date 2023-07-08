class CreateDevelopers < ActiveRecord::Migration[7.0]
  def change
    create_table :developers do |t|
      t.string :name
      t.integer :employee_id
      t.integer :kudos
      t.integer :current_sprint_id
      t.integer :current_pairing_id
      t.string :job_title
      t.boolean :is_on_pto
      t.integer :manager_id
      t.integer :user_id

      t.timestamps
    end
  end
end
