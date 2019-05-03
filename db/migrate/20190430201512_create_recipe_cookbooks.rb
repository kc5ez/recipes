class CreateRecipeCookbooks < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_cookbooks do |t|
      t.integer :calories
      t.text :blurb
      t.string :category
      t.time :time
      t.string :difficulty
      t.string :name

      t.timestamps
    end
  end
end
