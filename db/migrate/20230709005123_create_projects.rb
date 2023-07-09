class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.integer :lead_developer_id
      t.string :name
      t.text :description
      t.string :status
      t.integer :user_id
      t.integer :manager_id
      t.string :source_url
      t.boolean :is_complete
      t.datetime :start_date
      t.datetime :end_date
      t.integer :priority

      t.timestamps
    end
  end
end
