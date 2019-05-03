class Ingredient < ApplicationRecord
	has_many :recipe_ingredients
	has_many :recipe_cookbooks, :through => :recipe_ingredients
end
