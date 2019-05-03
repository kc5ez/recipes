class RecipeCookbook < ApplicationRecord
	has_many :recipe_ingredients
	has_many :recipe_steps
	has_many :ingredients, :through => :recipe_ingredients
end
