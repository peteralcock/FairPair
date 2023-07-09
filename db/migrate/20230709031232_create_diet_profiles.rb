class CreateDietProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :diet_profiles do |t|
      t.integer :user_id
      t.integer :developer_id
      t.text :restrictions
      t.text :favorites
      t.text :allergies
      t.text :likes
      t.text :dislikes

      t.timestamps
    end
  end
end
