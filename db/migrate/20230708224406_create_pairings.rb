class CreatePairings < ActiveRecord::Migration[7.0]
  def change
    create_table :pairings do |t|
      t.integer :developer1_id
      t.integer :developer2_id
      t.integer :manager_id
      t.integer :user_id
      t.integer :sprint_id
      t.integer :kudos_id

      t.timestamps
    end
  end
end
