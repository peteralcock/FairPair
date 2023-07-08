class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :source_url
      t.string :youtube_url
      t.string :image_url
      t.string :thumbnail_url
      t.text :instructions
      t.text :grocery_list
      t.string :ingredient_1
      t.string :ingredient_2
      t.string :ingredient_3
      t.string :ingredient_4
      t.string :ingredient_5
      t.string :ingredient_6
      t.string :ingredient_7
      t.string :ingredient_8
      t.string :ingredient_9
      t.string :ingredient_10
      t.string :ingredient_11
      t.string :ingredient_12
      t.string :ingredient_13
      t.string :ingredient_14
      t.string :ingredient_15
      t.string :ingredient_16
      t.string :ingredient_17
      t.string :ingredient_18
      t.string :ingredient_19
      t.string :ingredient_20

      t.timestamps
    end
  end
end
