class CreateSprints < ActiveRecord::Migration[7.0]
  def change
    create_table :sprints do |t|
      t.integer :number
      t.datetime :start_date
      t.datetime :end_date
      t.integer :user_id
      t.text :description
      t.string :name
      t.timestamps
    end
  end
end
