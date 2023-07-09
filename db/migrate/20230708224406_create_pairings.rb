class CreatePairings < ActiveRecord::Migration[7.0]
  def change
    create_table :pairings do |t|
      t.integer :user_id
      t.references "sprint", null: false, foreign_key: true
      t.references "developer1", null: false, foreign_key: { to_table: :developers }
      t.references "developer2", foreign_key: { to_table: :developers }
      t.timestamps
    end
  end
end
