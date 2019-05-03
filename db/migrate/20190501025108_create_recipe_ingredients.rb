class CreateRecipeIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_ingredients do |t|
      t.string :amount
      t.references :recipe_cookbook, foreign_key: true
      t.references :ingredient, foreign_key: true
    end
  end
end
