class RecipeIngredient < ApplicationRecord
	belongs_to :recipe_cookbook
	belongs_to :ingredient
end
