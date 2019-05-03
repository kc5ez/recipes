class CreateRecipeSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_steps do |t|
      t.text :instruction
      t.integer :step
      t.references :recipe_cookbook, foreign_key: true
    end
  end
end
