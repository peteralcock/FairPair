class CreatePtoRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :pto_requests do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.references :developer, null: false, foreign_key: true
      t.string :status
      t.datetime :approved_at
      t.integer :manager_id
      t.text :note

      t.timestamps
    end
  end
end
